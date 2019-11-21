package com.loan.service;

import com.loan.model.UserRegistration;

public interface UserService {

	public boolean checkLogin(String email, String password);
	public boolean addNewUser(UserRegistration user);
	public UserRegistration findUserById(int userid);
	
}
