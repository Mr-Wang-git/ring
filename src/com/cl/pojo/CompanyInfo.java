package com.cl.pojo;

import java.io.Serializable;

import lombok.Data;

@SuppressWarnings("serial")
@Data
//��˾����
public class CompanyInfo implements Serializable{
	private int id;
//	ͷ��
	private String img;
//	��˾����
	private String companyName;
//	����������
	private String legalRep;
//	ע���ʱ�
	private String capital;
//	��������
	private String incorTime;
//	�绰
	private String	phone;
//	����
	private String email;
//	�칫��ַ
	private String officeAddress;
//	����
	private String officialWebsite;
}
