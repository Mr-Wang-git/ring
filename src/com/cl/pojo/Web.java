package com.cl.pojo;

import java.io.Serializable;

import lombok.Data;

@SuppressWarnings("serial")
@Data
//招聘网页管理
public class Web implements Serializable{
	private int id;
//	title标题
	private String title;
	
	private String java;
	
	private String frame;
	
	private String front_end;

}
