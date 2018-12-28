package com.aaa.service;

import com.aaa.entity.UserInfo;

/**
 * @Author: 陈建
 * @Date: 2018/12/12 0012 21:40
 * @Version 1.0
 */
public interface ILoginService {

    UserInfo findByName(String name);
}
