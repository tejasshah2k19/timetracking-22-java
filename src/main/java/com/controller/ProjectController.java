package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.ProjectBean;
import com.bean.StatusBean;
import com.dao.ProjectDao;
import com.dao.StatusDao;

@Controller
public class ProjectController {

	@Autowired
	ProjectDao projectDao;

	@Autowired
	StatusDao statusDao;

	@GetMapping("/listprojects")
	public String getAllRoles(Model model) {
		model.addAttribute("projects", projectDao.getAllProjects());
		return "ListProjects";
	}

	@GetMapping("/newproject")
	public String newProject(Model model) {

		List<StatusBean> status = statusDao.getAllStatus();
		model.addAttribute("status", status);
		return "NewProject";
	}

	@PostMapping("/saveproject")
	public String saveProject(ProjectBean project) {
		projectDao.addProject(project);
		return "redirect:/listprojects";
	}

	 

}
