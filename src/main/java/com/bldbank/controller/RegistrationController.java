package com.bldbank.controller;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;

import com.bldbank.entity.DonorDetails;
import com.bldbank.entity.RegistrationDetails;
import com.bldbank.service.RegistrationService;

@Controller
@RequestMapping("/registration")
public class RegistrationController {

	@Autowired
	RegistrationService regService;

	@RequestMapping("/index")
	public String homePage() {
		//System.out.println("index page");
		return "/index";
	} 
	
	@RequestMapping("/addregistration") 
	public String addRegistration(Map<String, Object> model) {
		model.put("regdetails", new RegistrationDetails());
		return "addregistration";
	}

	@RequestMapping(value = "/saveregistration", method = RequestMethod.POST)
	public String saveRegistration(@Valid @ModelAttribute("regdetails") RegistrationDetails regdetails, RedirectAttributes attributes,BindingResult bindingResult) {
		
		System.out.println(regdetails);
		if(bindingResult.hasErrors()) {
			return "addregistration";
		}
		else {
		
		regService.saveRegistration(regdetails);
		
		//attributes.addFlashAttribute("successmsg", "Registration Success");
		return "redirect:index";}
	}

}
