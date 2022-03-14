package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.ProjectDao;
import com.dao.StatusDao;
import com.dao.UserDao;
import com.fasterxml.jackson.annotation.JsonCreator.Mode;

@Controller
public class AdminController {

	@Autowired
	UserDao userDao;

	@Autowired
	ProjectDao projectDao;

	@Autowired
	StatusDao statusDao;

	@GetMapping("/admindashboard")
	public String adminDashboard(Model model) {

		int totalUserCount = userDao.getAllUsers().size();
		int totalDeveloperCount = userDao.getAllDevelopers().size();
		
		model.addAttribute("totalUserCount", totalUserCount);
		model.addAttribute("totalDeveloperCount",totalDeveloperCount);
		return "AdminDashboard";
	}

	@GetMapping("/myteam")
	public String myTeam(Model model) {
		model.addAttribute("users", userDao.getAllUsers());
		return "MyTeam";
	}

	@GetMapping("/projectreport")
	public String getAllRoles(@RequestParam("statusId") int statusId, Model model) {
		if (statusId == 0) {
			model.addAttribute("projects", projectDao.getAllProjects());
		} else {
			model.addAttribute("projects", projectDao.getAllProjectsByStatus(statusId));
		}
		model.addAttribute("status", statusDao.getAllStatus());
		return "ProjectReport";
	}

}
