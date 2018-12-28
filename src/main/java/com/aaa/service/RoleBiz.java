package com.aaa.service;

import com.aaa.entity.MyCondition;
import com.aaa.entity.PageBean;
import com.aaa.entity.Role;
import com.aaa.entity.UserInfo;

import java.util.List;
import java.util.Map;

public interface RoleBiz {
	List<Role>findAllRole();
	int delRoleById(Long id);
	int addRole(Role role);
	List<Long> findResourceByRoleId(Long id);
	int addGrandResource(Map<String,Object> map);


}
