package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class TaskController {

	
	@GetMapping("/task")
	public String newTask() {
		return "NewTask";
	}
	
	@PostMapping("/task")
	public String saveTask() {
		return "redirect:/alltask";
	}

	@GetMapping("/tasks")
	public String allTask() {
		return "AllTask";
	}
	
	@DeleteMapping("/task")
	public String deleteTask() {
		return "redirect:/tasks";
	}

}
