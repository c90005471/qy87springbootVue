package com.aaa.service.impl;

import com.aaa.dao.RoleMapper;
import com.aaa.dao.UserInfoDao;
import com.aaa.entity.MyCondition;
import com.aaa.entity.PageBean;
import com.aaa.entity.Role;
import com.aaa.entity.UserInfo;
import com.aaa.service.RoleBiz;
import com.aaa.service.UserInfoBiz;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

/**
 * @author teacher
 */
@Service
public class RoleBizImpl implements RoleBiz {
    @Autowired
    private RoleMapper roleMapper;

    @Override
    public List<Role> findAllRole() {
        return roleMapper.findAllRole();
    }

    @Transactional
    @Override
    public int delRoleById(Long id) {
        //根据角色id删除角色
        roleMapper.delRoleUser(id);
        //根据角色ID删除用户和角色中间表记录
        int ret = roleMapper.delRoleById(id);
        return ret;
    }

    /**
     * 添加角色
     *
     * @param role
     * @return
     */
    @Override
    public int addRole(Role role) {
        return roleMapper.insert(role);
    }

    @Override
    public List<Long> findResourceByRoleId(Long id) {
        return roleMapper.findResourceByRoleId(id);
    }

    /**
     * 重新设置角色和权限对应数据
     *
     * @param map
     * @return
     */
    @Transactional
    @Override
    public int addGrandResource(Map<String, Object> map) {
        try {
            Long roleId = 0L;
            if (map != null) {
                if (map.get("id") != null) {
                    //将roleID转换为long类型
                    roleId = Long.parseLong(map.get("id") + "");
                    roleMapper.delRoleResource(Long.parseLong(map.get("id") + ""));
                }
                List<Integer> checkedResourceList = new ArrayList<>();
                if (map.get("checkedResourceList") != null) {
                    checkedResourceList = (List<Integer>) map.get("checkedResourceList");
                }
                for (Integer resourceId : checkedResourceList) {
                    Map roleResource = new HashMap();
                    roleResource.put("roleId", roleId);
                    roleResource.put("resourceId", resourceId);
                    roleMapper.addGrandResource(roleResource);
                }
            }
        } catch (Exception e) {

            e.printStackTrace();
            return 0;
        }


        return 1;
    }
}
