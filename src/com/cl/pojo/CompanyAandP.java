package com.cl.pojo;

import java.io.Serializable;

import lombok.Data;
@SuppressWarnings("serial")
@Data
//��˾�˺ź�����
public class CompanyAandP implements Serializable{
	private int id;
//	�˺�
	private String account;
//	����
	private String password;
//	INFOID
	private String infoid;
}
