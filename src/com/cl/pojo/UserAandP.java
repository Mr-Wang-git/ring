package com.cl.pojo;

import java.io.Serializable;

import lombok.Data;

@SuppressWarnings("serial")
@Data
//用户账号
public class UserAandP implements Serializable{
	private int id;
//	账号
	private String account;
//	密码
	private String password;
//	简历关连
	private String resumeid;
//	信息关联
	private String userinfoid;
}
