package com.cl.pojo;

import java.io.Serializable;

import lombok.Data;

@SuppressWarnings("serial")
@Data
public class Resume implements Serializable{
	private int id;
//	�ֻ���
	private String phone;
//	����
	private String email;
//	ͷ��
	private String img;
//	����
	private String name;
//	����
	private String birthday;
//	�Ա�
	private String sex;
//	������ò
	private String outlook;
//	����
	private String household;
//	ѧ��
	private String education;
//	ѧϰʱ��  ��ʼ-����
	private String edu_time;
//	ѧУ����
	private String schoolName;
//	רҵ
	private String major;
//	������רҵ֪ʶ
	private String majorKnow;
//	ʵϰʱ��
	private String position_time;
//	ʵϰʱ��˾����
	private String companyName;
//	ʵϰʱְλ
	private String position;
//	����֤��
	private String certificateBookName;
//	��������
	private String Honor;
//	��������
	private String evaluation;
//	н��Ҫ��
	private String salary;
}
