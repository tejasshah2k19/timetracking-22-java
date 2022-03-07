package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.bean.ProjectBean;
import com.bean.UserBean;
import com.dao.ProjectTeamDao;

@Controller
public class DeveloperController {

	@Autowired
	ProjectTeamDao projectTeamDao;

	@GetMapping("/developerdashboard")
	public String developerDashboard(HttpSession session, Model model) {

		UserBean user = (UserBean) session.getAttribute("user");

		// projects

		List<ProjectBean> projects = projectTeamDao.getProjectByUserId(user.getUserId());
		model.addAttribute("totalProjects", projects.size());

		return "DeveloperDashboard";
	}

	@GetMapping("/devlistprojects")
	public String listMyProjects(HttpSession session, Model model) {
		UserBean user = (UserBean) session.getAttribute("user");
		List<ProjectBean> projects = projectTeamDao.getProjectByUserId(user.getUserId());
		model.addAttribute("projects", projects);
		return "DevListProjects";
	}

}
