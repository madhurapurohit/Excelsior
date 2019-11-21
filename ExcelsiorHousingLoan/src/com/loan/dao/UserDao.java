package com.loan.dao;

import com.loan.model.UserRegistration;

public interface UserDao {

	public int readLogin(String email, String password);
	public int createNewUser(UserRegistration user);
	public UserRegistration readUserById(int userid);
}
