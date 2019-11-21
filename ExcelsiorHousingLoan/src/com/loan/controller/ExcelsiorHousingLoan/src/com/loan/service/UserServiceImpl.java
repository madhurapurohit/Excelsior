package com.loan.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.loan.dao.UserDao;
import com.loan.model.UserRegistration;


@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao dao;
	
	public UserServiceImpl(){
		
	}
	
	@Override
	public boolean checkLogin(String email, String password) {
	
			int result = getDao().readLogin(email, password);
			if(result ==1)
				return true;
			else
				return false;
		
	}

	@Transactional
	public boolean addNewUser(UserRegistration user) {
	int result = getDao().createNewUser(user);
	if(result == 1){
	return true;
	}
	else{
			return false;
		}	
	}

	public UserDao getDao() {
		return dao;
	}

	public void setDao(UserDao dao) {
		this.dao = dao;
	}

	@Override
	public UserRegistration findUserById(int userid) {
		
		UserRegistration user=getDao().readUserById(userid);
		return user;
	}

}
