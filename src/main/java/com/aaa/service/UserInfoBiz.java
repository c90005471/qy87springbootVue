package com.aaa.service;

import java.util.List;
import java.util.Map;

import com.aaa.entity.MyCondition;
import com.aaa.entity.PageBean;
import com.aaa.entity.UserInfo;

public interface UserInfoBiz {
	List<UserInfo>findAllUser();
	PageBean<UserInfo> findAllUser(Map<String,Object> query);
	List<UserInfo>findAllUserCondition(MyCondition condition);
	int addUser(UserInfo user);
	int delUserById(Integer id);
	void eaddUser2(UserInfo user);
	int editUser(UserInfo user);
}
