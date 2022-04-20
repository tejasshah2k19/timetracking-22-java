package com.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bean.ProjectBean;
import com.bean.UserBean;
import com.dao.ProfileDao;
import com.dao.ProjectDao;
import com.dao.StatusDao;
import com.dao.UserDao;

@Controller
public class AdminController {

	@Autowired
	UserDao userDao;

	@Autowired
	ProjectDao projectDao;

	@Autowired
	StatusDao statusDao;

	@Autowired
	ProfileDao profileDao;

	@GetMapping("/admindashboard")
	public String adminDashboard(Model model) {

		int totalUserCount = userDao.getAllUsers().size();
		int totalDeveloperCount = userDao.getAllDevelopers().size();
		int totalOnGoingProject = projectDao.getAllProjectsByStatus(1).size();
		int totalpipelineProject = projectDao.getAllProjectsByStatus(3).size();

		List<ProjectBean> projects = projectDao.getAllProjects();

		model.addAttribute("totalUserCount", totalUserCount);
		model.addAttribute("totalDeveloperCount", totalDeveloperCount);
		model.addAttribute("totalOnGoingProject", totalOnGoingProject);
		model.addAttribute("totalpipelineProject", totalpipelineProject);
		model.addAttribute("projects", projects);

		return "AdminDashboard";
	}

	@GetMapping("/myteam")
	public String myTeam(Model model) {
		model.addAttribute("users", userDao.getAllUsers());
		return "MyTeam";
	}

	@GetMapping("/projectreport")
	public String getAllRoles(@RequestParam("statusId") int statusId, Model model) {
		if (statusId == 0) {
			model.addAttribute("projects", projectDao.getAllProjects());
		} else {
			model.addAttribute("projects", projectDao.getAllProjectsByStatus(statusId));
		}
		model.addAttribute("status", statusDao.getAllStatus());
		return "ProjectReport";
	}

	@GetMapping("/uploadprofile")
	public String uploadProfile() {

		return "UploadProfile";
	}

	@PostMapping("/saveprofile")
	public String saveProfile(@RequestParam("profilePic") MultipartFile file, HttpSession session) {

		System.out.println(file.getOriginalFilename());
		System.out.println(file.getSize());

		UserBean user = (UserBean) session.getAttribute("user");
		int userId = user.getUserId();

		String path = "E:\\Tejas Shah\\Dropbox\\boot\\timetracking\\src\\main\\resources\\static\\images\\";

		byte image[] = new byte[(int) file.getSize()];

		try {

			File userFolder = new File(path, userId + "");// 10 20 30
			userFolder.mkdir(); // create folder if not present else it will not create

			profileDao.updateProfile("/images/" + userId + "/" + file.getOriginalFilename(), userId);
			// images/1/a.jpg

			image = file.getBytes();
			File f = new File(userFolder, file.getOriginalFilename());
			f.createNewFile();
			FileOutputStream fos = new FileOutputStream(f);
			fos.write(image);
			fos.close();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return "UploadProfile";
	}

}
