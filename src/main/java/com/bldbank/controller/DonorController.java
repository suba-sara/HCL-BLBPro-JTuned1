package com.bldbank.controller;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bldbank.entity.DonorDetails;
import com.bldbank.service.DonorService;

@Controller
@RequestMapping("/donordetails")
public class DonorController {

	@Autowired
	private DonorService dnrservice;

	/*
	 * @RequestMapping("/index") public String homePage() {
	 * System.out.println("index page"); return "/index"; }
	 */

	@RequestMapping("/donorslist")
	public String viewDonorspage(Model model) {
		List<DonorDetails> donorList = dnrservice.getAllDonorList();
		model.addAttribute("donorList", donorList);
		System.out.println(donorList.toString());
		return "donorslist";
	}

	@RequestMapping("/adddonor")
	public String showNewDonorsPage(Map<String, Object> model) {
		model.put("donors", new DonorDetails());
		return "adddonor";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveDonor(@Valid @ModelAttribute("donors") DonorDetails donor, BindingResult result) {
		
		if(result.hasErrors()) {
			return "adddonors";
		}
		else {
		dnrservice.saveDonor(donor);
		return "redirect:donorslist";}
	}

	@RequestMapping("/edit/{donorId}")
	public ModelAndView showEditDonor(@PathVariable(name = "donorId") Integer donorId) {
		ModelAndView mv = new ModelAndView("editdonor");
		DonorDetails donor = dnrservice.getDonor(donorId);
		mv.addObject("donors", donor);
		return mv;
	}

	@RequestMapping("/delete{donorId}")
	public String deleteDonor(@PathVariable(name = "donorId") Integer donorId) {
		// System.out.println(donorId);
		dnrservice.deleteDonor(donorId);
		return "redirect:donorslist";
	}

	@RequestMapping("/searchdonor")
	public String searchdonor(Map<String, Object> model) {
		model.put("searchDonor", new DonorDetails());
		return "searchdonor";
	}
	
	@RequestMapping("/search")
	public ModelAndView viewDonorsbyBldGrp(Model model, @Param("bloodGroup") String bloodGroup) {
		List<DonorDetails> searchDonor = dnrservice.getDonorsList(bloodGroup);

		ModelAndView mv = new ModelAndView("searchdonor");
		mv.addObject("searchDonors", searchDonor);
		return mv;
	}
 
	
}
