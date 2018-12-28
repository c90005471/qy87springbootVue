package com.aaa.service.impl;

import com.aaa.dao.UserInfoDao;
import com.aaa.entity.Resource;
import com.aaa.entity.Role;
import com.aaa.entity.UserInfo;
import com.aaa.service.ILoginService;
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
    private UserInfoDao userInfoMapper;
    @Override
    public UserInfo findByName(String name) {
        UserInfo user = userInfoMapper.findByName(name);
        List<Role> roleList = userInfoMapper.findRoleByUserId(user.getId());
        List<Role> roleListNew=new ArrayList<Role>();
        for (Role role : roleList) {
            List<Resource> resourceList = userInfoMapper.findResourceByRoleIds(role.getId());
            role.setResources(resourceList);
            roleListNew.add(role);
        }
        user.setRoles(roleListNew);
        return user;
    }

}
