package com.aaa.service.impl;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.aaa.entity.PageBean;
import com.aaa.entity.UserInfoVo;
import com.github.pagehelper.PageHelper;
import org.apache.tomcat.util.buf.StringUtils;
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

	/*@Override
	public Map findAllUser(Map<String, Object> query) {
		Map map = new HashMap();
		map.put("rowList",userInfoDao.findAllUserByPage(query));
		map.put("totalRow",userInfoDao.getTotal());
		return map;
	}*/
	@Override
	public PageBean<UserInfo>  findAllUser(Map<String, Object> query) {
		PageHelper.startPage(Integer.parseInt(query.get("pageNo")+""),Integer.parseInt(query.get("pageSize")+""));
		/*map.put("rowList",userInfoDao.findAllUserByPage(query));

		map.put("totalRow",userInfoDao.getTotal());*/
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

	@Override
	public int addUser(UserInfo user) {
		return userInfoDao.addUser( user);

	}

	@Override
	public int editUser(UserInfo user) {
		return userInfoDao.editUser( user);

	}
	@Override
	public int delUserById(Integer id) {
		return userInfoDao.delUserById( id);//法第一个人的工资

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
