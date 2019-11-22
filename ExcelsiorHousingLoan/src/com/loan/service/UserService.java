package com.loan.service;

import com.loan.model.Document;
import com.loan.model.Income;
import com.loan.model.LoanDetails;
import com.loan.model.UserRegistration;

public interface UserService {

	public int checkLogin(String email, String password);
	public boolean addNewUser(UserRegistration user);
	public UserRegistration findUserById(int userid);
	public boolean addIncomeDetails(Income income);
	public boolean addLoanDetails(LoanDetails loan);
	public boolean addDocuments(Document document);
	
}
