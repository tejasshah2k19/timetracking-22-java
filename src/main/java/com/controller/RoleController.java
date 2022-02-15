package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bean.RoleBean;

@Controller
public class RoleController {

//	@RequestMapping(value ="newrole",method = RequestMethod.GET)
	@GetMapping("/newrole")
	public String newRole() {
		return "NewRole";// jsp
	}

	@PostMapping("/saverole")
	public String saveRole(RoleBean role) {
		System.out.println(role.getRoleName());
		return "";
	}
}
