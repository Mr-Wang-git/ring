package com.cl.pojo;

import java.io.Serializable;

import lombok.Data;

@SuppressWarnings("serial")
@Data
//�û��˺�
public class UserAandP implements Serializable{
	private int id;
//	�˺�
	private String account;
//	����
	private String password;
//	��������
	private String resumeid;
//	��Ϣ����
	private String userinfoid;
}
