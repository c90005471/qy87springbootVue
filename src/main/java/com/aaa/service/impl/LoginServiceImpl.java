package com.aaa.service.impl;

import com.aaa.dao.UserMapper;
import com.aaa.entity.Resource;
import com.aaa.entity.Role;
import com.aaa.entity.User;
import com.aaa.service.ILoginService;
import org.apache.ibatis.javassist.expr.NewArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author: 陈建
 * @Date: 2018/12/12 0012 22:17
 * @Version 1.0
 */
@Service
public class LoginServiceImpl implements ILoginService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public User findByName(String name) {
        User user = userMapper.findByName(name);
        List<Role> roleList = userMapper.findRoleByUserId(user.getId());
        List<Role> roleListNew=new ArrayList<Role>();
        for (Role role : roleList) {
            List<Resource> resourceList = userMapper.findResourceByRoleIds(role.getId());
            role.setResources(resourceList);
            roleListNew.add(role);
        }
        user.setRoles(roleListNew);
        return user;
    }

    @Override
    public User addUser(User user) {
        return null;
    }

    @Override
    public Role addRole(Role role) {
        return null;
    }
}
