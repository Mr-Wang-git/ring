package com.cl.pojo;

import java.io.Serializable;

import lombok.Data;
@SuppressWarnings("serial")
@Data
//¹«Ë¾ÕËºÅºÍÃÜÂë
public class CompanyAandP implements Serializable{
	private int id;
//	ÕËºÅ
	private String account;
//	ÃÜÂë
	private String password;
//	INFOID
	private String infoid;
}
