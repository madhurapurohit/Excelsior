package com.loan.dao;


import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.loan.model.Document;
import com.loan.model.Income;
import com.loan.model.LoanDetails;
import com.loan.model.UserRegistration;


@Repository
public class UserDaoImpl implements UserDao {
		
	@PersistenceContext
	private EntityManager entityManager;
	
	public UserDaoImpl(){
		
	}
	
	@Override
	public int readLogin(String email, String password) {
		String jpql = "Select u From UserRegistration as u Where u.email=:email And u.pwd=:pwd";
		TypedQuery<UserRegistration> tquery = entityManager.createQuery(jpql, UserRegistration.class);
		tquery.setParameter("email", email);
		tquery.setParameter("pwd", password);
		UserRegistration user = tquery.getSingleResult();
		if(user==null)	
			return 0;
		else
			return user.getUserid();
	}
	
	@Override
	public int createNewUser(UserRegistration user) {
		entityManager.persist(user);
		return 1;
	}

	@Override
	public UserRegistration readUserById(int userid) {
		String jpql = "Select u From UserRegistration as u Where u.userid=:userid";
		TypedQuery<UserRegistration> tquery = entityManager.createQuery(jpql, UserRegistration.class);
		tquery.setParameter("userid", userid);
		UserRegistration user = tquery.getSingleResult();
		return user;
	}

	@Override
	@Transactional
	public boolean insertIncomeDetails(Income income){
		
		/*String jpql="Insert into Income (userid,propertyloc,propertyname,propertyvalue,employementtype,orgtype,employername,monthlyincome) values (?,?,?,?,?,?,?,?)";
		
		Query query=entityManager.createNativeQuery(jpql);
		query.setParameter(1,income.getUserid());
		query.setParameter(2,income.getPropertyloc());
		query.setParameter(3,income.getPropertyname());
		query.setParameter(4,income.getPropertyvalue());
		query.setParameter(5,income.getEmployementtype());
		query.setParameter(6,income.getOrgtype());
		query.setParameter(7,income.getEmployername());
		query.setParameter(8,income.getMonthlyincome());
		int result=query.executeUpdate();
		if(result!=0)
		return true;
		else
		return false;*/
		
		entityManager.persist(income);
		return true;
		
	}

	@Override
	@Transactional
	public boolean insertLoanDetails(LoanDetails loan) {
		entityManager.persist(loan);
		return true;
	}

	@Override
	@Transactional
	public boolean insertDocuments(Document document) {
		entityManager.persist(document);
		return true;
	}

	
}

