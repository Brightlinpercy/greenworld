package com.greenworld.EcomFrontend.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.greenworld.EcomBackend.dao.CategoryDao;

@Controller
public class HomeController {
	
	@Autowired
	CategoryDao catdao;
	
	@RequestMapping(value = { "/", "/index" })
	String sliderPage(Model model) {
		model.addAttribute("sliderPage", true);
		return "index";
	}

	@RequestMapping("/aboutus")
	String aboutPage(Model model) {
		model.addAttribute("aboutPage", true);
		return "index";

	}

	@RequestMapping("/contactus")
	String contactPage(Model model) {
		model.addAttribute("contactPage", true);
		return "index";

	}

	@RequestMapping("/login")
	String loginPage(Model model) {
		model.addAttribute("loginPage", true);
		return "index";

	}

	@RequestMapping("/register")
	String registerPage(Model model) {
		model.addAttribute("registerPage", true);
		return "index";
	}

	
	
}
