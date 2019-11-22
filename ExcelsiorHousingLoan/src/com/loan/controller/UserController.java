package com.loan.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.loan.model.Document;
import com.loan.model.Income;
import com.loan.model.LoanDetails;
import com.loan.model.UserRegistration;
import com.loan.service.UserService;
@Controller
public class UserController {


	@Autowired
	private UserService service;

	@Autowired
	private UserRegistration user;
	
	private HttpSession session=null;
	
	
	@RequestMapping(path="customerLogin")
	public String customerLogin(){
		return "CustomerLogin";
	}
	
	@RequestMapping(path="customerLogin.do")
	public String customerLogin(Model model,HttpServletRequest request,@RequestParam("email") String email, @RequestParam("password") String pwd){
		
		int check = service.checkLogin(email, pwd);
		if(check!=0){
			session=request.getSession(true);
			session.setAttribute("userid",check);
			user=service.findUserById(check);
			model.addAttribute("userdetails",user);
			return "UserHome";
		}
			
		else
			return "Error";
	}
	
	@RequestMapping(path="userlogout")
	public String logout(){
		
		session.invalidate();
		System.out.println("Session Invalidated"); 
		return "Home";
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
	public String applicationForm(HttpServletRequest request,Model model){
		
		int id=(int)session.getAttribute("userid");
		user=service.findUserById(id);
		
		model.addAttribute("userdetails",user);
		return "ApplicationForm";
	}
	

	@RequestMapping(path="applicationSubmit",method=RequestMethod.POST)
	
	public String addLoanApplicationDetails(Income income,LoanDetails loan,Document document){
		int id=(int)session.getAttribute("userid");
		income.setUserid(id);
		loan.setUserid(id);
		document.setUserid(id);
		boolean result1=service.addIncomeDetails(income);
		boolean result2=service.addLoanDetails(loan);
		boolean result3=service.addDocuments(document);
		if(result1 && result2 && result3)
		return "RegistrationSuccessfull";
		else
		return "Error";
	}
	
	
	
}
