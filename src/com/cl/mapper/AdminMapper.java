package com.cl.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.cl.pojo.Admin;
import com.cl.pojo.CompanyAandP;
import com.cl.pojo.CompanyInfo;
import com.cl.pojo.UserAandP;
import com.cl.pojo.Web;

@Mapper
public interface AdminMapper {

	String findAdminIdByAandP(@Param("account")String account, @Param("pass")String pass);

	Admin FindOneByid(@Param("id")String id);

	List<Web> FindWEB();

	List<CompanyInfo> FindSevenCompany();

	List<UserAandP> FindAllUser();

	String SelectUserAandp();

	String SelectCompanyAandp();

	String Selectmessagefound();

	String Selectinteractive();

	String Selectreal_timeinfo();

	String Selectresume();

	void DeleteUser(@Param("id")String id);

	void DeleteUserResume(@Param("id")String rid);

	void DeleteUserInfo(@Param("id")String infoid);

	void UpdateUser(@Param("id")String id, @Param("pass")String pass);

	List<CompanyAandP> FindAllCompany();

	void deleteCompany(@Param("id")String id);
	
	void deleteCompanyinfo(@Param("INFOID")String infoid);

	void updateCompany(@Param("id")String id, @Param("pass")String pass);

	void DeleteMess(@Param("id")String id);

	void AddAdmin(@Param("ACC")String acc,@Param("pass")String pass);

	void DeleteNews(@Param("id")String id);

	void insertNews(@Param("title")String title, @Param("img")String imgName,
			@Param("content")String content, @Param("time")String time);

	

}
