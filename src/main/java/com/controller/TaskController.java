package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.TaskBean;
import com.dao.ModuleDao;
import com.dao.ProjectDao;
import com.dao.StatusDao;
import com.dao.TaskDao;

@Controller
public class TaskController {

	@Autowired
	TaskDao taskDao;
	
	@Autowired
	ProjectDao projectDao;
	
	@Autowired
	ModuleDao moduleDao; 
	
	
	@Autowired
	StatusDao statusDao; 
	
	@GetMapping("/newtask")
	public String newTask(Model model) {
		model.addAttribute("projects",projectDao.getAllProjects());
		model.addAttribute("status",statusDao.getAllStatus());
		return "NewTask";
	}
	
	@PostMapping("/task")
	public String saveTask(TaskBean task) {
		taskDao.addTask(task);
		return "redirect:/tasks";
	}

	@GetMapping("/tasks")
	public String allTask(Model model) {
		model.addAttribute("task",taskDao.getAllTask());
		return "ListTask";

	}
	
	@DeleteMapping("/task")
	public String deleteTask() {
		return "redirect:/tasks";
	}

}
