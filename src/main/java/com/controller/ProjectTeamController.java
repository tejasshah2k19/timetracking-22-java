package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.ProjectDao;
import com.dao.ProjectTeamDao;

@Controller
public class ProjectTeamController {

	@Autowired
	ProjectTeamDao projectTeamDao;

	@Autowired
	ProjectDao projectDao;

	@GetMapping("/viewteam")
	public String viewTeam(@RequestParam("projectId") int projectId, Model model) {

		model.addAttribute("team", projectTeamDao.getTeamMembers(projectId));
		model.addAttribute("project", projectDao.getProjectById(projectId));
		return "ViewTeam";
	}

	@GetMapping("/addteammember")
	public String addTeamMember(@RequestParam("projectId") int projectId, Model model) {

		model.addAttribute("users", projectTeamDao.getUsersForProject(projectId));
		model.addAttribute("project", projectDao.getProjectById(projectId));
		model.addAttribute("team", projectTeamDao.getTeamMembers(projectId));

		return "AddTeamMember";
	}

	@PostMapping("/saveteammembers")
	public String saveTeamMembers(@RequestParam("userId") int userId[], @RequestParam("projectId") int projectId) {
		System.out.println(projectId);
		for (int i = 0; i < userId.length; i++) {
			System.out.println(userId[i]);
			projectTeamDao.addTeamMember(projectId, userId[i]);
		}
		return "redirect:/viewteam?projectId=" + projectId;
	}

	@GetMapping("/removemember")
	public String removeMember(@RequestParam("projectId") int projectId,@RequestParam("userId") int userId) {
		projectTeamDao.removeTeamMember(projectId,userId);
		return "redirect:/viewteam?projectId=" + projectId;
	}

}
