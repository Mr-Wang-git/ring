package com.cl.pojo;

import java.io.Serializable;

import lombok.Data;

@SuppressWarnings("serial")
@Data
//����
public class Interactive implements Serializable{
	private int id;
//	��˾id
	private int com_id;
//	�û�id
	private int user_id;
//	��������
	private String content;
	
}
