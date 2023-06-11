package com.cl.pojo;

import java.io.Serializable;

import lombok.Data;

@SuppressWarnings("all")
@Data
//管理员账号密码
public class Admin implements Serializable{
	
	private int id;
//	管理员账号
	private String adminAccount;
//	管理员密码
	private String adminPassword;
}