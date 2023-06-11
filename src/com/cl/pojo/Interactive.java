package com.cl.pojo;

import java.io.Serializable;

import lombok.Data;

@SuppressWarnings("serial")
@Data
//交互
public class Interactive implements Serializable{
	private int id;
//	公司id
	private int com_id;
//	用户id
	private int user_id;
//	交互内容
	private String content;
	
}
