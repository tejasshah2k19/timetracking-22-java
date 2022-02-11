package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SessionController {

	@RequestMapping(value = "signup",method = RequestMethod.GET)
	public String signup() {
		System.out.println("i am from signup....");
		return "Signup";// this is your view page --> html
	}
}
