package com.cl.service;

import java.util.List;

import com.cl.pojo.Admin;
import com.cl.pojo.CompanyAandP;
import com.cl.pojo.CompanyInfo;
import com.cl.pojo.UserAandP;
import com.cl.pojo.Web;

public interface AdminService {

	String findAdminIdByAandP(String account, String pass);

	Admin FindOneByid(String id);

	List<Web> FindWEB();

	List<CompanyInfo> FindSevenCompany();

	List<UserAandP> FindAllUser();

	String SelectUserAandp();

	String SelectCompanyAandp();

	String Selectmessagefound();

	String Selectinteractive();

	String Selectreal_timeinfo();

	String Selectresume();

	void DeleteUser(String id, String rid, String infoid);

	void UpdateUser(String id, String pass);

	List<CompanyAandP> FindAllCompany();

	void deleteCompany(String id, String infoid);

	void updateCompany(String id, String pass);

	void DeleteMess(String id);

	void AddAdmin(String acc, String pass);

	void DeleteNews(String id);

	void insertNews(String title, String imgName, String content, String time);

}
