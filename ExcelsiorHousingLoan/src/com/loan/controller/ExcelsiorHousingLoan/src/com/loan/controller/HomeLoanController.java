package com.loan.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.loan.model.UserRegistration;
import com.loan.service.AdminService;
import com.loan.service.UserService;

@Controller
public class HomeLoanController {
	
	@Autowired
	private UserService service;
	
	@Autowired
	private AdminService service1;
	
	@Autowired
	private UserRegistration user;
	
	@RequestMapping(path="/" )
	public String homePage(){
		return "Home";
	}
	
	@RequestMapping(path="logout")
	public String logout(){
		return "Home";
	}
	
	@RequestMapping(path="emicalc")
	public String emicalculator(){
		return "EmiCalculator";
	}
	

	@RequestMapping(path="eligbcalc")
	public String eligibilitycalculator(){
		return "EligibilityCalculator";
	}
	
	
	@RequestMapping(path="customerLogin")
	public String customerLogin(){
		return "CustomerLogin";
	}
	
	@RequestMapping(path="customerLogin.do")
	public String customerLogin(@RequestParam("email") String email, @RequestParam("password") String pwd){
		boolean check = service.checkLogin(email, pwd);
		if(check){
			System.out.println("check ture");
			return "UserHome";
		}
			
		else
			return "Error";
	}
	
	
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
	

	
	@RequestMapping(path="userRegisterPage", method = RequestMethod.GET)
	public String addUserPage(){
		return "RegistrationForm";
	}
	
	@RequestMapping(path = "addUser.do", method = RequestMethod.POST)
	public String addUser(@RequestParam("fname") String fname, @RequestParam("mname") String mname,
			@RequestParam("lname") String lname, @RequestParam("email") String email, @RequestParam("pwd") String pwd,
			@RequestParam("mob") String mob, @RequestParam("nationality") String nationality,
			@RequestParam("gender") String gender, @RequestParam("dob") Date dob) {

		user.setFname(fname);
		user.setMname(mname);
		user.setLname(lname);
		user.setEmail(email);
		user.setPwd(pwd);
		user.setMob(mob);
		user.setNationality(nationality);
		user.setGender(gender);
		user.setDob(dob);
		System.out.println(user);
		boolean result = service.addNewUser(user);
		if (result) {
			return "Home";
		}
		return "Error";
	}
	
	@RequestMapping(path="applicationform")
	public String aaplicationForm(){
		return "ApplicationForm";
	}
	
	@RequestMapping(path="applicationSubmit",method=RequestMethod.POST)
	public String addLoanApplicationDetails(){
		return "redirect:registrationsuccess";
	}
	
	@RequestMapping(path="registrationsuccess",method=RequestMethod.GET)
	public String registrationSucces(){
		return "RegistrationSuccessfull";
	}
	
	

}
