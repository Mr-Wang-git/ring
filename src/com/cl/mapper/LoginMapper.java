package com.cl.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface LoginMapper {

	String SelectCompanyAccountAndPass(@Param("ACC")String acc,@Param("pass") String pass);

	String SelectUserAccountAndPass(@Param("ACC")String acc,@Param("pass") String pass);

	String SelectCompanyPass(@Param("account")String account, @Param("phone")String phone);

	String SelectUserPass(@Param("account")String account, @Param("phone")String phone);

	String findCompanyAccountByPhone(@Param("phone")String phone);

	String findUserAccountByPhone(@Param("phone")String phone);
}
