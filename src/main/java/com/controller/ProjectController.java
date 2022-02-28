package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.ProjectBean;
import com.dao.ProjectDao;

@Controller
public class ProjectController {

	@Autowired
	ProjectDao projectDao;
	
	@GetMapping("/listprojects")
	public String getAllRoles() {
		return "ListProjects";
	}

	@GetMapping("/newproject")
	public String newProject() {
		return "NewProject";
	}

	@PostMapping("/saveproject")
	public String saveProject(ProjectBean project) {
		projectDao.addProject(project);
		return "redirect:/listprojects";
	}

}
