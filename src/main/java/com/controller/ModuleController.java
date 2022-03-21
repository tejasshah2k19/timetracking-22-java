package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bean.ModuleBean;
import com.dao.ModuleDao;
import com.dao.ProjectDao;
import com.dao.StatusDao;
import com.fasterxml.jackson.databind.Module;

@Controller
public class ModuleController {

	@Autowired
	ProjectDao projectDao;

	@Autowired
	StatusDao statusDao;

	@Autowired
	ModuleDao moduleDao;

	@GetMapping("/modules")
	public String getAllModules(Model model) {
		model.addAttribute("modules", moduleDao.getAllModules());
		return "ListModules";
	}

	@GetMapping("/newmodule")
	public String newModule(Model model) {
		model.addAttribute("projects", projectDao.getAllProjects());
		model.addAttribute("status", statusDao.getAllStatus());
		return "NewModule";
	}

	@PostMapping("/module")
	public String saveModule(ModuleBean module) {
		moduleDao.saveModule(module);
		return "redirect:/modules";
	}

	@GetMapping("/editmodule")
	public String editModule(@RequestParam("moduleId") int moduleId, Model model) {
		ModuleBean module = moduleDao.getModuleById(moduleId);
		System.out.println(module.getStatusId());
		model.addAttribute("module", module);
		model.addAttribute("status", statusDao.getAllStatus());
		return "EditModule";
	}

	@PostMapping("/updatemodule")
	public String updateModule(ModuleBean module) {
		moduleDao.updateModule(module);
		return "redirect:/modules";
	}

	@GetMapping("/deletemodule")
	public String deleteModule(@RequestParam("moduleId") int moduleId, Model model) {
		moduleDao.deleteModule(moduleId);
		return "redirect:/modules";

	}

//	@GetMapping("/getmodulesbyproject")
	@RequestMapping(value = "/getmodulesbyproject",method = RequestMethod.GET,  produces="application/json")
	@ResponseBody
	public List<ModuleBean> getModulesByProject(@RequestParam("projectId") int projectId) {
		System.out.println("get all modules by project........");
		return moduleDao.getAllModulesByProjectId(projectId);
	}
}
