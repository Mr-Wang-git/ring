package com.cl.pojo;

import java.io.Serializable;

import lombok.Data;

@SuppressWarnings("serial")
@Data
//��Ѷ
public class RealTimeInfo implements Serializable{
	private int id;
//	����
	private String title;
//	����
	private String content;
//	ͼƬ
	private String img;
//	ʱ��
	private String time;

}
