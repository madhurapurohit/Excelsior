package com.loan.service;

import com.loan.dao.UserLoginDaoImpl;

public class UserLoginImpl implements UserLoginService{

	UserLoginDaoImpl dao = null;
	public UserLoginImpl(){
		dao = new UserLoginDaoImpl();
	}
	
	@Override
	public boolean checkLogin(String email, String password) {
	
			int result = dao.readLogin(email, password);
			if(result ==1)
				return true;
			else
				return false;
		
	}

}
