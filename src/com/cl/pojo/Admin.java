package com.cl.pojo;

import java.io.Serializable;

import lombok.Data;

@SuppressWarnings("all")
@Data
//����Ա�˺�����
public class Admin implements Serializable{
	
	private int id;
//	����Ա�˺�
	private String adminAccount;
//	����Ա����
	private String adminPassword;
}