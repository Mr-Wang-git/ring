package com.cl.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cl.mapper.AdminMapper;
import com.cl.pojo.Admin;
import com.cl.pojo.CompanyAandP;
import com.cl.pojo.CompanyInfo;
import com.cl.pojo.UserAandP;
import com.cl.pojo.Web;
import com.cl.service.AdminService;
@Service
public class AdminServiceImpl implements AdminService{
	@Autowired
	AdminMapper adminMapper;

	@Override
	public String findAdminIdByAandP(String account, String pass) {
		// TODO Auto-generated method stub
		return adminMapper.findAdminIdByAandP(account,pass);
	}

	@Override
	public Admin FindOneByid(String id) {
		// TODO Auto-generated method stub
		return adminMapper.FindOneByid(id);
	}

	@Override
	public List<Web> FindWEB() {
		// TODO Auto-generated method stub
		return adminMapper.FindWEB();
	}

	@Override
	public List<CompanyInfo> FindSevenCompany() {
		// TODO Auto-generated method stub
		return adminMapper.FindSevenCompany();
	}

	@Override
	public List<UserAandP> FindAllUser() {
		// TODO Auto-generated method stub
		return adminMapper.FindAllUser();
	}

	@Override
	public String SelectUserAandp() {
		// TODO Auto-generated method stub
		return adminMapper.SelectUserAandp() ;
	}

	@Override
	public String SelectCompanyAandp() {
		// TODO Auto-generated method stub
		return adminMapper.SelectCompanyAandp() ;
	}

	@Override
	public String Selectmessagefound() {
		// TODO Auto-generated method stub
		return adminMapper.Selectmessagefound() ;
	}

	@Override
	public String Selectinteractive() {
		// TODO Auto-generated method stub
		return adminMapper.Selectinteractive() ;
	}

	@Override
	public String Selectreal_timeinfo() {
		// TODO Auto-generated method stub
		return adminMapper.Selectreal_timeinfo() ;
	}

	@Override
	public String Selectresume() {
		// TODO Auto-generated method stub
		return adminMapper.Selectresume() ;
	}

	@Override
	public void DeleteUser(String id, String rid, String infoid) {
		// TODO Auto-generated method stub
		adminMapper.DeleteUser(id);
		adminMapper.DeleteUserResume(rid);
		adminMapper.DeleteUserInfo(infoid);
	}

	@Override
	public void UpdateUser(String id, String pass) {
		// TODO Auto-generated method stub
		adminMapper.UpdateUser(id,pass);
	}

	@Override
	public List<CompanyAandP> FindAllCompany() {
		// TODO Auto-generated method stub
		return adminMapper.FindAllCompany();
	}

	@Override
	public void deleteCompany(String id, String infoid) {
		// TODO Auto-generated method stub
		adminMapper.deleteCompany(id);
		adminMapper.deleteCompanyinfo(infoid);
	}

	@Override
	public void updateCompany(String id, String pass) {
		// TODO Auto-generated method stub
		adminMapper.updateCompany(id,pass);
	}

	@Override
	public void DeleteMess(String id) {
		// TODO Auto-generated method stub
		adminMapper.DeleteMess(id);
	}

	@Override
	public void AddAdmin(String acc, String pass) {
		// TODO Auto-generated method stub
		adminMapper.AddAdmin(acc,pass);
	}

	@Override
	public void DeleteNews(String id) {
		// TODO Auto-generated method stub
		adminMapper.DeleteNews(id);
	}

	@Override
	public void insertNews(String title, String imgName, String content, String time) {
		// TODO Auto-generated method stub
		adminMapper.insertNews(title,imgName,content,time);
	}
	
	
	
}
