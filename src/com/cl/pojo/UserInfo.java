package com.cl.pojo;

import java.io.Serializable;

import lombok.Data;

@SuppressWarnings("serial")
@Data
//�û�����
public class UserInfo implements Serializable{
	private int id;
//	����
	private String name;
//	�ֻ���
	private String phone;
//	����
	private String email;
//	�Ա�
	private String sex;
//	��ַ
	private String household;
//	����
	private String birthday;
//	�Ƿ���
	private String work;
//	��Ȥ
	private String hobby;
//	ͷ��
	private String img;
}
