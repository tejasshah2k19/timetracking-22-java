package com.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.ProjectBean;
import com.bean.TaskBean;
import com.bean.UserBean;
import com.dao.ProjectTeamDao;
import com.dao.TaskDao;

@Controller
public class DeveloperController {

	@Autowired
	ProjectTeamDao projectTeamDao;

	@Autowired
	TaskDao taskDao;

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

	@GetMapping("/devviewtask")
	public String getDevTaskByProject(@RequestParam("projectId") int projectId, Model model, HttpSession session) {
		UserBean user = (UserBean) session.getAttribute("user");
		List<TaskBean> tasks = taskDao.getTaskByDeveloper(user.getUserId(),projectId);
		System.out.println(tasks.size());
		model.addAttribute("task", tasks);

		return "DevListTask";
	}
	
	@GetMapping("/devviewtaskdetails")
	public String getDevViewTaskDetail(@RequestParam("taskId") int taskId, Model model) {

		TaskBean task = taskDao.getTaskById(taskId);
		model.addAttribute("task", task);

		return "DevViewTaskDetails";
	}
}
