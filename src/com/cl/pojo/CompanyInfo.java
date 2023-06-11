package com.cl.pojo;

import java.io.Serializable;

import lombok.Data;

@SuppressWarnings("serial")
@Data
//公司资料
public class CompanyInfo implements Serializable{
	private int id;
//	头像
	private String img;
//	公司名称
	private String companyName;
//	法定代表人
	private String legalRep;
//	注册资本
	private String capital;
//	成立日期
	private String incorTime;
//	电话
	private String	phone;
//	邮箱
	private String email;
//	办公地址
	private String officeAddress;
//	官网
	private String officialWebsite;
}
