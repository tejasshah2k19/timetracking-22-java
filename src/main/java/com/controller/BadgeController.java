package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.BadgeBean;
import com.dao.BadgeDao;

@Controller
public class BadgeController {

	@Autowired
	BadgeDao badgeDao;

	@GetMapping("/newbadge")
	public String newBadge() {
		return "NewBadge";// jsp

	}

	@PostMapping("/savebadge")
	public String saveBadge(BadgeBean badgeBean) {

		badgeDao.insertBadge(badgeBean);
		return "redirect:/listbadge";// list badge method

	}

	@GetMapping("/listbadge")
	public String listBadge(Model model) {

		List<BadgeBean> badges = badgeDao.getAllBadges();

		model.addAttribute("badges", badges);
		return "ListBadge";
	}

	@GetMapping("/deletebadge")
	public String deleteBadge(@RequestParam("badgeId") int badgeId) {

		badgeDao.deleteBadge(badgeId);

		return "redirect:/listbadge";// list badge method
	}

}
