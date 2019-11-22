package com.loan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.loan.service.AdminService;
@Controller
public class AdminController {

	@Autowired
	private AdminService service1;
	
	@RequestMapping(path="adminLogin")
	public String adminLogin(){
		System.out.println("hello");
		return "AdminLogin";
	}
	

	@RequestMapping(path="adminLogin.do", method=RequestMethod.POST)
	public String adminLogin(@RequestParam("username") String username, @RequestParam("password") String password){
		boolean check1 = service1.checkLogin(username, password);
		if(check1)
			return "Home";
		else
			return "Error";
	}
	
}
