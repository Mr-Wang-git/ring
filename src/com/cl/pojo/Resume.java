package com.cl.pojo;

import java.io.Serializable;

import lombok.Data;

@SuppressWarnings("serial")
@Data
public class Resume implements Serializable{
	private int id;
//	手机号
	private String phone;
//	邮箱
	private String email;
//	头像
	private String img;
//	姓名
	private String name;
//	生日
	private String birthday;
//	性别
	private String sex;
//	政治面貌
	private String outlook;
//	籍贯
	private String household;
//	学历
	private String education;
//	学习时间  开始-结束
	private String edu_time;
//	学校名称
	private String schoolName;
//	专业
	private String major;
//	已掌握专业知识
	private String majorKnow;
//	实习时间
	private String position_time;
//	实习时公司名称
	private String companyName;
//	实习时职位
	private String position;
//	技能证书
	private String certificateBookName;
//	所获荣誉
	private String Honor;
//	自我评价
	private String evaluation;
//	薪资要求
	private String salary;
}
