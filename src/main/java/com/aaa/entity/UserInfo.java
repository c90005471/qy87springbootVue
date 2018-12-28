package com.aaa.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

/**
 * @author TeacherChen
 * @description 用户实体类
 * @company AAA软件
 * @classname Qy87
 * 2018-11-21上午9:56:16
 */
@Data
public class UserInfo {
	private int id;
	private String username;
	private String password;
	private String salt;
	private Timestamp createtime;
	/*保存照片url，以逗号分割*/
	private String imageUrls="";
	private List<Role> roles;
	private List<Integer> roleIds;

}
