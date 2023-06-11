package com.cl.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cl.mapper.LoginMapper;
import com.cl.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService{
	@Autowired
	private LoginMapper loginMapper;

	@Override
	public String SelectCompanyAccountAndPass(String acc, String pass) {
		String id = loginMapper.SelectCompanyAccountAndPass(acc,pass);
		return id;
	}

	@Override
	public String SelectUserAccountAndPass(String acc, String pass) {
		String id = loginMapper.SelectUserAccountAndPass(acc,pass);
		return id;
	}

	@Override
	public String SelectCompanyPass(String account, String phone) {
		// TODO Auto-generated method stub
		return loginMapper.SelectCompanyPass(account,phone);
	}

	@Override
	public String SelectUserPass(String account, String phone) {
		// TODO Auto-generated method stub
		return loginMapper.SelectUserPass(account,phone);
	}
	
	@Override
	public String findCompanyAccountByPhone(String phone) {
		// TODO Auto-generated method stub
		return loginMapper.findCompanyAccountByPhone(phone);
	}

	@Override
	public String findUserAccountByPhone(String phone) {
		// TODO Auto-generated method stub
		return loginMapper.findUserAccountByPhone(phone);
	}

	
}
