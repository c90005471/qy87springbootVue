package com.aaa.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.aaa.entity.PageBean;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.dao.UserInfoDao;
import com.aaa.entity.MyCondition;
import com.aaa.entity.UserInfo;
import com.aaa.service.UserInfoBiz;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserInfoImpl implements UserInfoBiz {
	@Autowired
	private UserInfoDao userInfoDao;

	@Override
	public List<UserInfo> findAllUser() {
		return userInfoDao.findAllUser();
	}
	@Override
	public PageBean<UserInfo>  findAllUser(Map<String, Object> query) {
		PageHelper.startPage(Integer.parseInt(query.get("pageNo")+""),Integer.parseInt(query.get("pageSize")+""));
		List<UserInfo> allUserByPage = userInfoDao.findAllUserByPage(query);
		int total = userInfoDao.getTotal();
		PageBean<UserInfo> pageData = new PageBean<UserInfo>();
		pageData.setItems(allUserByPage);
		pageData.setTotalNum(total);
		return pageData;
	}


	@Override
	public List<UserInfo> findAllUserCondition(MyCondition condition) {
		return userInfoDao.findAllUserCondition(condition);
	}

	/**
	 * 添加用户，分两个步骤，首先添加用户信息，然后添加用户和角色中间表信息
	 * @param user
	 * @return
	 */
	@Transactional
	@Override
	public int addUser(UserInfo user) {
		try {
			userInfoDao.addUser( user);
			for(Integer roleId:user.getRoleIds()){
				Map map = new HashMap();
				map.put("userId",user.getId());
				map.put("roleId",roleId);
				userInfoDao.addUserRole(map);
			}
		}catch (Exception e){
			e.printStackTrace();
		}
		return 1;

	}

	@Override
	public int editUser(UserInfo user) {
		return userInfoDao.editUser( user);
	}
	@Override
	public int delUserById(Integer id) {
		userInfoDao.delUserRoleById(id);
		return userInfoDao.delUserById( id);

	}
	@Override
	public void eaddUser2(UserInfo user) {
		userInfoDao.addUser( user);//法第一个人的工资
		int a=1/0;
		user.setId(user.getId()+1);
		user.setUsername("老王隔壁的");
		userInfoDao.addUser( user);//法第二个人的工资
		
	}

	public int getTotal(){
		return userInfoDao.getTotal();
	}

}
