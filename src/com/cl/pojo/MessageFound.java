package com.cl.pojo;

import java.io.Serializable;

import lombok.Data;

@SuppressWarnings("serial")
@Data
//发现
public class MessageFound implements Serializable{
	private int id;
//	公司id
	private int com_id;
//	用户id
	private int u_id;
//	用户名
	private String name;
//	内容
	private String content;
//	时间
	private String time;
}
