package com.aaa.service.impl;

import com.aaa.dao.UserMapper;
import com.aaa.entity.Role;
import com.aaa.entity.User;
import com.aaa.service.ILoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
        return userMapper.findByName(name);
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
