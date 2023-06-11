package com.cl.pojo;

import java.io.Serializable;

import lombok.Data;

@SuppressWarnings("serial")
@Data
//资讯
public class RealTimeInfo implements Serializable{
	private int id;
//	标题
	private String title;
//	内容
	private String content;
//	图片
	private String img;
//	时间
	private String time;

}
