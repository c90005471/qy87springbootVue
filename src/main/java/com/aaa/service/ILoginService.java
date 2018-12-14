package com.aaa.service;

import com.aaa.entity.Role;
import com.aaa.entity.User;

/**
 * @Author: 陈建
 * @Date: 2018/12/12 0012 21:40
 * @Version 1.0
 */
public interface ILoginService {

    User findByName(String name);
    User addUser(User user);
    //添加角色
     Role addRole(Role role) ;
}
