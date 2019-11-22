package com.loan.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.loan.model.Admin;

@Repository
public class AdminDaoImpl implements AdminDao {

	@PersistenceContext
	private EntityManager entityManager;

	public AdminDaoImpl() {

	}

	@Override
	public int readLogin(String username, String password) {
		System.out.println(username + " " + password);
		String jpql = "Select a From Admin as a Where a.username=:username And a.password=:password";
		TypedQuery<Admin> tquery = entityManager.createQuery(jpql, Admin.class);
		tquery.setParameter("username", username);
		tquery.setParameter("password", password);
		List<Admin> list = tquery.getResultList();
		System.out.println(list.size());
		return list != null ? list.size() : 0;

	}
}
