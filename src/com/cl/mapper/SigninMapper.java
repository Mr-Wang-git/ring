package com.cl.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface SigninMapper {
//	用户注册
	String findUserAccount(@Param("account")String account);
	
	void signinResume(@Param("email")String email, @Param("phone")String phone);

	void signinUserInfo(@Param("email")String email, @Param("phone")String phone);

	Integer selectResume(@Param("email")String email, @Param("phone")String phone);

	Integer selectUserInfo(@Param("email")String email, @Param("phone")String phone);
	
	void signinUser(@Param("account")String account, @Param("pass")String pass, @Param("id3")String id3, @Param("id4")String id4);
//	公司注册

	String findCompanyAccount(@Param("account")String account);

	void signinCompanyInfo(@Param("phone")String phone, @Param("legal")String legal, @Param("address")String address, @Param("email")String email);

	String selectCompanyInfoId(@Param("legal")String legal, @Param("address")String address, @Param("email")String email);

	void SigninCompany(@Param("ACC")String acc, @Param("pass")String pass, @Param("id")String id);

	
	
//	管理
	String findAdminAccount(@Param("account")String account);
	
	
}
