package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProjectManagerController {

	@GetMapping("/projectmanagerdashboard")
	public String projectManagerDashboard() {
		//
		
		return "ProjectManagerDashboard";
	}
}
