package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DeveloperController {

	@GetMapping("/developerdashboard")
	public String developerDashboard() {
		return "DeveloperDashboard";
	}
}
