package com.aaa.dao;

import com.aaa.entity.*;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Component
@Mapper
public interface UserInfoDao {
	List<UserInfo> findAllUser();
	List<UserInfo>findAllUserCondition(MyCondition condition);
	int addUser(UserInfo user);
	int editUser(UserInfo user);
	int delUserById(Integer id);
	List<UserInfo> findAllUserByPage(Map<String, Object> query);
	int getTotal();
	UserInfo findByName(String username);
	List<Role> findRoleByUserId(Integer userid);
	List<Resource> findResourceByRoleIds(Long roleId);
	void  addUserRole(Map map);
	int delUserRoleById(Integer id);

}
