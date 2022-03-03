package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.ProjectTeamDao;

@Controller
public class ProjectTeamController {

	
	@Autowired
	ProjectTeamDao projectTeamDao; 
	
	
	@GetMapping("/viewteam")
	public String viewTeam(@RequestParam("projectId") int projectId,Model model) {
		
		model.addAttribute("team",projectTeamDao.getTeamMembers(projectId));
		return "ViewTeam"; 
	}
}
