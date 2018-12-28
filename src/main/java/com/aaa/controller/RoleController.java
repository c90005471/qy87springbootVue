package com.aaa.controller;

import com.aaa.entity.ResultModel;
import com.aaa.entity.Role;
import com.aaa.entity.Tree;
import com.aaa.service.ResourceBiz;
import com.aaa.service.RoleBiz;
import com.aaa.util.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Author: 陈建
 * @Date: 2018/12/15 0015 15:36
 * @Version 1.0
 */
@Controller
@RequestMapping("/role")
public class RoleController extends BaseContrllor {
    @Autowired
    private RoleBiz roleBizImpl;
    @Autowired
    private ResourceBiz resourceBizImpl;

    /**
     * 跳转到显示所有角色的页面
     * @return
     */
    @RequestMapping("/toShowAllRole")
    public String  toShowAllRole(){
        return "admin/showRole.html";
    }
    /**
     * 查询所有的角色
     * @return
     */
    @RequestMapping("/findAllRole")
    @ResponseBody
    public List<Role> findAllRole(){
        List<Role> roleList = roleBizImpl.findAllRole();
        return roleList;
    }

    /**
     * 添加角色
     * @param role
     * @return
     */
    @RequestMapping("/addRole")
    @ResponseBody
    public  ResultModel addRole(@RequestBody Role role){
        int ret = roleBizImpl.addRole(role);
        if (ret > 0) {
            return returnSuccessInfo("添加角色成功！");
        } else {
            return returnErrorInfo("添加角色失败");
        }
    }

    /**
     * 删除角色
     * @param id
     * @return
     */
    @RequestMapping("/delRoleById")
    @ResponseBody
    public  ResultModel delRoleById(Long  id){
        int ret = roleBizImpl.delRoleById(id);
        if (ret > 0) {
            return returnSuccessInfo("删除角色成功！");
        } else {
            return returnErrorInfo("删除角色失败");
        }
    }

    /**
     * 根据roleid返回权限树所需要的所有数据
     * @param id
     * @return
     */
    @RequestMapping("/findResourceByRoleId")
    @ResponseBody
    public Map<String ,Object> findResourceByRoleId(Long id){
        Map<String ,Object> map = new HashMap<String ,Object>();
        List<Tree> resourceListTree = resourceBizImpl.showAllResourcesTree(Constants.RESOURCE_BUTTON);
        List<Long> resourceCheckedIds=roleBizImpl.findResourceByRoleId(id);
        map.put("resourceListTree",resourceListTree);
        map.put("resourceCheckedIds",resourceCheckedIds);
        return map;

    }
    @RequestMapping("/addGrandResource")
    @ResponseBody
    public ResultModel addGrandResource(Long id,@RequestBody Map<String,Object> map){
        //roleBizImpl.delRoleById(id);
        int ret = roleBizImpl.addGrandResource(map);
        if (ret > 0) {
            return returnSuccessInfo("删除角色成功！");
        } else {
            return returnErrorInfo("删除角色失败");
        }

    }
}
