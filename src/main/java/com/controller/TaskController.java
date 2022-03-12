package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.dao.TaskDao;

@Controller
public class TaskController {

	@Autowired
	TaskDao taskDao;
	
	@GetMapping("/task")
	public String newTask() {
		return "NewTask";
	}
	
	@PostMapping("/task")
	public String saveTask() {
		return "redirect:/alltask";
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
