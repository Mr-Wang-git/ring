package com.cl.pojo;

import java.io.Serializable;

import lombok.Data;

@SuppressWarnings("serial")
@Data
//����
public class MessageFound implements Serializable{
	private int id;
//	��˾id
	private int com_id;
//	�û�id
	private int u_id;
//	�û���
	private String name;
//	����
	private String content;
//	ʱ��
	private String time;
}
