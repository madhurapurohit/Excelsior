package com.loan.dao;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

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
		List<UserRegistration> list = tquery.getResultList();
		return  list!=null?list.size():0;
		
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
}

