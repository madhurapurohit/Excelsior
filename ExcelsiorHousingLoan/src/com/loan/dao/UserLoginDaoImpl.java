package com.loan.dao;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.loan.model.UserRegistration;
import com.loan.utils.JpaUtils;



public class UserLoginDaoImpl implements UserLoginDao {
	EntityManager entityManager;

	public UserLoginDaoImpl(){
	entityManager = JpaUtils.getEntityManager();
	}
	
	@Override
	public int readLogin(String email, String password) {
		String jpql = "Select u From UserRegistration u Where u.emailid=:email And u.password=:pass";
		TypedQuery<UserRegistration> tquery = entityManager.createQuery(jpql, UserRegistration.class);
		tquery.setParameter("email", email);
		tquery.setParameter("pass", password);
		List<UserRegistration> list = tquery.getResultList();
		return list.size();
		
	}
}
