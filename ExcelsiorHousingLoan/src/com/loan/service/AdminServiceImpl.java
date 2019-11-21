package com.loan.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.loan.dao.AdminDao;
@Service
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDao dao;

	@Override
	public boolean checkLogin(String email, String password) {
		int result=  dao.readLogin(email, password);
		if(result ==1)
			return true;
		else
			return false;
	}
}
