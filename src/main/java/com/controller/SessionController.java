package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bean.UserBean;

@Controller
public class SessionController {

	@RequestMapping(value = "signup", method = RequestMethod.GET)
	public String signup() {
		System.out.println("i am from signup....");
		return "Signup";// this is your view page --> html
	}

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login() {
		return "Login";// Login.jsp
	}

	@RequestMapping(value = "forgetpassword", method = RequestMethod.GET)
	public String forgetPassword() {
		return "ForgetPassword";

	}

	@RequestMapping(value="saveuser",method = RequestMethod.POST)
	public String  saveUser(UserBean user) {
		//fn em pwd ==> bean 
		System.out.println(user.getFirstName());
		System.out.println(user.getEmail());
		System.out.println(user.getPassword());
		return "Login";
	}


}









