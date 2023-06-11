package com.cl.pojo;

import java.io.Serializable;

import lombok.Data;

@SuppressWarnings("serial")
@Data
//招聘岗位
public class RecruitmentPosition implements Serializable{
	private int id;
//	要求
	private String requirement;
//	薪资
	private String salary;
//	职位名称
	private String positionName;
//	工种类型
	private String subadge;
//	地址
	private String address;
//	关联公司id
	private String com_id;
}
