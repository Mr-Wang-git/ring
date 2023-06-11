package com.cl.pojo;

import java.io.Serializable;

import lombok.Data;

@SuppressWarnings("serial")
@Data
//用户资料
public class UserInfo implements Serializable{
	private int id;
//	姓名
	private String name;
//	手机号
	private String phone;
//	邮箱
	private String email;
//	性别
	private String sex;
//	地址
	private String household;
//	生日
	private String birthday;
//	是否工作
	private String work;
//	兴趣
	private String hobby;
//	头像
	private String img;
}
