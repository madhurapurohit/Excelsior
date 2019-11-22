package com.loan.dao;

import com.loan.model.Document;
import com.loan.model.Income;
import com.loan.model.LoanDetails;
import com.loan.model.UserRegistration;

public interface UserDao {

	public int readLogin(String email, String password);
	public int createNewUser(UserRegistration user);
	public UserRegistration readUserById(int userid);
	public boolean insertIncomeDetails(Income income);
	public boolean insertLoanDetails(LoanDetails loan);
	public boolean insertDocuments(Document document);
}
