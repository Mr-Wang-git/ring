package com.cl.service;

public interface LoginService {
//  账号密码查找是否与数据库中值有匹配的
	String SelectCompanyAccountAndPass(String acc, String pass);
	String SelectUserAccountAndPass(String acc, String pass);
	String SelectCompanyPass(String account, String phone);
	String SelectUserPass(String account, String phone);
	String findCompanyAccountByPhone(String phone);
	String findUserAccountByPhone(String phone);

}
