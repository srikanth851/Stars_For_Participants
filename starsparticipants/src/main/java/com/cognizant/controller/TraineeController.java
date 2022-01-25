package com.cognizant.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class TraineeController {


	//shows trainer rating page.
	@RequestMapping(value = "/TrainerRatingPage", method = RequestMethod.GET)
	public String showRegisterPage(ModelMap model) {
		return "TrainerRatingPage";
	}

	@RequestMapping(value = "/TrainerRatingPage", method = RequestMethod.POST)
	public String showRegisterForm(ModelMap model) {
		return "TrainerRatingPage";
	}

}
