package com.aaa.controller;

import com.aaa.entity.MyCondition;
import com.aaa.entity.PageBean;
import com.aaa.entity.ResultModel;
import com.aaa.entity.UserInfo;
import com.aaa.service.UserInfoBiz;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.*;

/**
 * @author TeacherChen
 * @description 用户业务控制器
 * @company AAA软件
 * @classname Qy78
 * 2018-11-21上午10:03:48
 */
@Controller
@RequestMapping("/userinfo")//窄化请求
public class UserInfoController  extends BaseContrllor{
	private Logger log= LogManager.getLogger(getClass());
	@Autowired
	private UserInfoBiz userInfoImpl;
	@Value("${fileupload.path}")
	private String filePath;



	@RequestMapping("/toShowUser")
	public String toShowUser(){
		return "showUser";
	}

	/**
	 * 请求toShowUserElementUI路径，跳转至element测试页面
	 * @return
	 */
	@RequestMapping("/toShowUserElementUI")
	public String toShowUserElementUI(){

		return "showUserElementUI";
	}
	@RequestMapping("/toShowUserEU")
	public String toShowUserEU(){
		log.info("toShowUserEU跳转到elementui页面");
		return "admin/showUserEU";
	}

	@RequestMapping("/findAllUser")
	public String findAllUser(HttpSession session) {
		List<UserInfo> userList = userInfoImpl.findAllUser();
		session.setAttribute("userList", userList);
		
		return "showUser";

	}

	/**
	 * 返回所有的用户，并跳转到thymeleaf页面
	 * @param model
	 * @return
	 */
	@RequestMapping("/findAllUserTh")
	public String findAllUserTh(Model model) {
		List<UserInfo> userList = userInfoImpl.findAllUser();
		model.addAttribute("myUserList",userList);
		return "showUserThymeleaf";

	}
	@RequestMapping("/findAllUserJson")
	@ResponseBody
	public PageBean<UserInfo> findAllUserJson(@RequestBody Map<String,Object> query) {
		return userInfoImpl.findAllUser(query);
	}
	/**
	 * 
	 *TODO 按照条件查询
	 *@param session
	 *@return
	 *2018-11-23上午9:54:01
	 */
	@RequestMapping("/findAllUserCondition")
	public String findAllUserCondition(HttpSession session,MyCondition condition) {
		List<UserInfo> userList = userInfoImpl.findAllUserCondition(condition);
		session.setAttribute("userList", userList);
		return "showUser";
	}
	@RequestMapping("/toAddUserPage")
	public  String  toAddUserPage() {
		return "addUser";

	}
	@RequestMapping("/addUser")
	@ResponseBody
	public ResultModel addUser(@RequestBody UserInfo user) {
		String salt = UUID.randomUUID()+"";
		user.setPassword(shiroPasswordUtil(salt,user.getPassword()));
		user.setSalt(salt);
		user.setCreatetime(new Timestamp(System.currentTimeMillis()));
		int ret=userInfoImpl.addUser(user);
		if (ret>0){
			return returnSuccessInfo("添加成功");
		}else {
			return returnErrorInfo("添加失败");
		}
	}
	@RequestMapping("/editUser")
	@ResponseBody
	public ResultModel editUser(@RequestBody UserInfo user) {
		int ret=userInfoImpl.editUser(user);
		if (ret>0){
			return returnSuccessInfo("修改成功");
		}else {
			return returnErrorInfo("修改失败");
		}

	}
	@RequestMapping("/delUserById")
	@ResponseBody
	public ResultModel delUserById(Integer id) {
		int ret=userInfoImpl.delUserById(id);
		if (ret>0){
			return returnSuccessInfo("删除成功");
		}else {
			return returnErrorInfo("删除失败");
		}

	}
	@RequestMapping("/upload")
	@ResponseBody
	public Map  upload(@RequestParam MultipartFile file) {
		return upload(file,filePath);
	}

	@RequestMapping("/welcome")
	public String welcome(){
		return "welcome";
	}
}
