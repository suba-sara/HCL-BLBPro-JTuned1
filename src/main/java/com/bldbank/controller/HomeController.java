package com.bldbank.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bldbank.entity.AdminUser;
import com.bldbank.entity.RegistrationDetails;
import com.bldbank.serviceimpl.MyUserDetialsService;

@Controller
@RequestMapping("/index")
public class HomeController {

	@Autowired
	MyUserDetialsService userservice;
	
	@RequestMapping("/index")
	public String homepage() {
		return "/index";
	}
	
	@RequestMapping("/login")
	public String login(Map<String, Object> model) {
		model.put("user", new AdminUser());
		return "login";
	}
	
	@RequestMapping(value = "/signin", method = RequestMethod.POST)
	public String saveRegistration(@ModelAttribute("user") AdminUser user ) {
		userservice.loadUserByUsername("user");
		return "redirect:/donordetails/donorslist";
	}
	
	
}
