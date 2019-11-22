package com.loan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.loan.model.Income;

@Controller
public class HomeLoanController {

	
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

	
	@RequestMapping(path="userRegisterPage", method = RequestMethod.GET)
	public String addUserPage(){
		return "RegistrationForm";
	}


	
	

}
