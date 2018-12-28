package com.aaa.controller;

import ch.qos.logback.core.net.SyslogOutputStream;
import com.aaa.entity.Resource;
import com.aaa.entity.ResultModel;
import com.aaa.entity.Tree;
import com.aaa.service.ResourceBiz;

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
@RequestMapping("/resource")
public class ResourcesController extends BaseContrllor {
    @Autowired
    private ResourceBiz resourceBizImpl;

    /**
     * 显示所有的权限树，根据当前用户
     */
    @RequestMapping("/showAllResources")
    @ResponseBody
    public List<Tree> showAllResources() {
        //通过shiro安全框架获取当前登录名
        String shiroUserName = getShiroUserName();
        System.out.println(shiroUserName);
        List<Tree> trees = resourceBizImpl.showAllResources(shiroUserName);
        return trees;
    }

    /**
     * 跳转到显示所有资源页面
     */
    @RequestMapping("/toShowAllResourcesList")
    public String toShowAllResourcesList() {
        return "admin/showResource";
    }

    /**
     * 显示所有的权限列表，
     */
    @RequestMapping("/showAllResourcesList")
    @ResponseBody
    public List<Resource> showAllResourcesList() {
        System.out.println("1111111111");
        List<Resource> resourceList = resourceBizImpl.showAllResourcesList();
        return resourceList;
    }

    /**
     * 显示所有的权限树
     */
    @RequestMapping("/showAllResourcesTree")
    @ResponseBody
    public List<Tree> showAllResourcesTree() {
        System.out.println("showAllResourcesTree");
        List<Tree> resourceListTree = resourceBizImpl.showAllResourcesTree(Constants.RESOURCE_BUTTON);
        return resourceListTree;
    }
    /**
     * 显示所有的父级权限树（所有的菜单）
     */
    @RequestMapping("/showAllParentResourcesTree")
    @ResponseBody
    public List<Tree> showAllParentResourcesTree() {
        List<Tree> resourceListTree = resourceBizImpl.showAllResourcesTree(Constants.RESOURCE_MENU);
        return resourceListTree;
    }

    /**
     * 添加资源
     * @param resource
     * @return
     */
    @RequestMapping("/addResource")
    @ResponseBody
    public ResultModel addResource(@RequestBody Resource resource) {
        int ret = resourceBizImpl.addResource(resource);
        if (ret > 0) {
            return returnSuccessInfo("添加资源成功！");
        } else {
            return returnErrorInfo("添加资源失败");
        }

    }
    /**
     * 修改资源
     * @param resource
     * @return
     */
    @RequestMapping("/editResource")
    @ResponseBody
    public ResultModel editResource(@RequestBody Resource resource) {
        int ret = resourceBizImpl.editResource(resource);
        if (ret > 0) {
            return returnSuccessInfo("修改资源成功！");
        } else {
            return returnErrorInfo("修改资源失败");
        }

    }
    /**
     * 添加资源
     * @param resource
     * @return
     */
    @RequestMapping("/deleteResourceById")
    @ResponseBody
    public ResultModel deleteResourceById(Long id) {
        int ret = resourceBizImpl.delResource(id);
        if (ret > 0) {
            return returnSuccessInfo("删除资源成功！");
        } else {
            return returnErrorInfo("删除资源失败");
        }

    }

    @RequestMapping("/findResourceById")
    @ResponseBody
   public  Map<String,Object> findResourceById(Long id){
        Map<String,Object> map = new HashMap<String,Object>();
        map=resourceBizImpl.findResourceById(id);
        return map;
    }
}
