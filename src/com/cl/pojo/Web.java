package com.cl.pojo;

import java.io.Serializable;

import lombok.Data;

@SuppressWarnings("serial")
@Data
//��Ƹ��ҳ����
public class Web implements Serializable{
	private int id;
//	title����
	private String title;
	
	private String java;
	
	private String frame;
	
	private String front_end;

}
