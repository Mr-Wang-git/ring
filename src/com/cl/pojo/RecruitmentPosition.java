package com.cl.pojo;

import java.io.Serializable;

import lombok.Data;

@SuppressWarnings("serial")
@Data
//��Ƹ��λ
public class RecruitmentPosition implements Serializable{
	private int id;
//	Ҫ��
	private String requirement;
//	н��
	private String salary;
//	ְλ����
	private String positionName;
//	��������
	private String subadge;
//	��ַ
	private String address;
//	������˾id
	private String com_id;
}
