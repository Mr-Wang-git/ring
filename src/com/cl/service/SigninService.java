package com.cl.service;

public interface SigninService {
	void signinUser(String account, String pass, String id3, String id4);

	void signinResume(String account, String phone);

	void signinUserInfo(String account, String phone);

	Integer selectResume(String account, String phone);

	Integer selectUserInfo(String account, String phone);

	String findUserAccount(String account);

	String findCompanyAccount(String account);

	void signinCompanyInfo(String phone, String legal, String address, String acc);

	String selectCompanyInfoId(String legal, String address, String acc);

	void SigninCompany(String acc, String pass, String id);

	String findAdminAccount(String account);


}
 