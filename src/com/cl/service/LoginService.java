package com.cl.service;

public interface LoginService {
//  �˺���������Ƿ������ݿ���ֵ��ƥ���
	String SelectCompanyAccountAndPass(String acc, String pass);
	String SelectUserAccountAndPass(String acc, String pass);
	String SelectCompanyPass(String account, String phone);
	String SelectUserPass(String account, String phone);
	String findCompanyAccountByPhone(String phone);
	String findUserAccountByPhone(String phone);

}
