package com.greenworld.EcomFrontend.Controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.greenworld.EcomBackend.dao.SellerDao;
import com.greenworld.EcomBackend.model.Category;
import com.greenworld.EcomBackend.model.Seller;

@Controller
@RequestMapping("/admin")
public class SellerController {
	@Autowired
	SellerDao seldao;

	@RequestMapping("/seller")
	String sellerPage(Model model) {
		model.addAttribute("selobject", new Seller());
		model.addAttribute("sellerlist", seldao.selectAllSellers());
		model.addAttribute("sellerPage", true);
		model.addAttribute("error", false);
		model.addAttribute("message", "");
		model.addAttribute("success", false);
		model.addAttribute("editmode", false);
		return "index";
	}

	@RequestMapping("/addseller")
	String addSeller(@Valid @ModelAttribute("selobject") Seller s, BindingResult bindingResult, Model model) {
		try {
			if (bindingResult.hasErrors()) {
				model.addAttribute("selobject", s);
				model.addAttribute("error", true);
				model.addAttribute("message", "Inappropriate Data");

			} else {
				if (seldao.insertSeller(s)) {
					model.addAttribute("selobject", new Seller());
					model.addAttribute("success", true);
				} else {
					model.addAttribute("error", true);
					model.addAttribute("message", "Pls try After Sometime");
					model.addAttribute("selobject", s);
				}
			}
		} catch (Exception e) {
			model.addAttribute("selobject", s);
			model.addAttribute("error", true);
			model.addAttribute("message", "Duplicate Data");
		}
		model.addAttribute("sellerPage", true);
		model.addAttribute("sellerlist", seldao.selectAllSellers());
		model.addAttribute("editmode", false);
		return "index";
	}

	@RequestMapping("/deleteseller")
	String deleteSeller(@RequestParam("selname") String selname, Model model) {
		if (seldao.deleteSeller(selname)) {
			model.addAttribute("success", true);
		} else {
			model.addAttribute("error", true);
			model.addAttribute("message", "Pls try After Sometime");
		}
		model.addAttribute("selobject", new Seller());
		model.addAttribute("sellerPage", true);
		model.addAttribute("sellerlist", seldao.selectAllSellers());
		model.addAttribute("editmode", false);
		return "index";

	}

	@RequestMapping("/editseller")
	String editSeller(@RequestParam("selname") String selname, Model model) {
		model.addAttribute("editmode", true);
		model.addAttribute("success", false);
		model.addAttribute("error", false);
		model.addAttribute("message", "");
		model.addAttribute("selobject", seldao.selectOneSeller(selname));
		model.addAttribute("sellerPage", true);
		model.addAttribute("sellerlist", seldao.selectAllSellers());
		return "index";

	}

	@RequestMapping("/updateseller")
	String updateSeller(@Valid @ModelAttribute("selobject") Seller s, BindingResult bindingResult, Model model) {
		try {
			if (bindingResult.hasErrors()) {
				model.addAttribute("selobject", s);
				model.addAttribute("error", true);
				model.addAttribute("message", "Inappropriate Data");

			} else {
				if (seldao.updateSeller(s)) {
					model.addAttribute("selobject", new Seller());
					model.addAttribute("success", true);
				} else {
					model.addAttribute("error", true);
					model.addAttribute("message", "Pls try After Sometime");
					model.addAttribute("selobject", s);
				}
			}
		} catch (Exception e) {
			model.addAttribute("selobject", s);
			model.addAttribute("error", true);
			model.addAttribute("message", "Duplicate Data");
		}
		model.addAttribute("sellerPage", true);
		model.addAttribute("sellerlist", seldao.selectAllSellers());
		model.addAttribute("editmode", false);
		return "index";
	}

}
