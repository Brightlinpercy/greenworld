package com.greenworld.EcomFrontend.Controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.greenworld.EcomBackend.dao.CustomerDao;
import com.greenworld.EcomBackend.model.Customer;

@Controller
public class CustomerRegisterController {
	@Autowired
	CustomerDao custdao;

	@RequestMapping("/register")
	String registerPage(Model model) {
		model.addAttribute("regobject", new Customer());// catoject=new Category();
		model.addAttribute("registerPage", true);
		model.addAttribute("error", false);
		model.addAttribute("message", "");
		model.addAttribute("success", false);
		return "index";
	}

	@RequestMapping("/addcustomer")
	String addCustomer(@Valid @ModelAttribute("regobject") Customer u, BindingResult bindingResult, Model model) {
		try {
			if (bindingResult.hasErrors()) {
				model.addAttribute("regobject", u);
				model.addAttribute("error", true);
				model.addAttribute("message", "Inappropriate Data");

			} else {
				BCryptPasswordEncoder passwordEncoder=new BCryptPasswordEncoder();
				u.setPassword(passwordEncoder.encode(u.getPassword()));
				if (custdao.insertCustomer(u)) {
					model.addAttribute("regobject", new Customer());
					model.addAttribute("success", true);
				} else {
					model.addAttribute("error", true);
					model.addAttribute("message", "Pls try After Sometime");
					model.addAttribute("regobject", u);
				}
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			model.addAttribute("regobject", u);
			model.addAttribute("error", true);
			model.addAttribute("message", "Duplicate Data");
		}
		model.addAttribute("registerPage", true);
		return "index";
	}

}
