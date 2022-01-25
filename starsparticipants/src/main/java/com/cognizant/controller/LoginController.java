package com.cognizant.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cognizant.model.User;
import com.cognizant.model.services.UserService;

//contoller for user login page
@Controller
@SessionAttributes("verifiedUser")
public class LoginController {

	@Autowired
	UserService userService;
	@Autowired
	CustomValidator customValidator;

	// show this page at start
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPageGet(@ModelAttribute("user") User user) {
		return "loginpage";
	}

	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String WelcomePage(Model m) {
		User user= (User) m.getAttribute("verifiedUser");
		if (user != null) {
			return "welcome";
		}else {
			return "redirect:login";
		}
	}

	// verify and redirect to welcome after successful login
	@RequestMapping(value = "/welcome", method = RequestMethod.POST)
	public String welcome(@ModelAttribute("user") @Valid User user, BindingResult result, ModelMap model) {
	String exitpage;
	customValidator.validate(user, result);

	User currentUser = userService.checkForExistingUser(user);
	if (result.hasErrors()) {
	exitpage = "loginpage";
	} else if (currentUser.getUsername() == null) {
	exitpage = "loginpage";
	} else {
	model.addAttribute("verifiedUser", currentUser);
	if(currentUser.getUsercat().equalsIgnoreCase("Trainee"))
	{exitpage = "TraineeHome";}
	else if(currentUser.getUsercat().equalsIgnoreCase("Trainer"))
	exitpage = "TrainerHome";
	else
	exitpage="welcome";
	}
	model.addAttribute("userId", currentUser.getUserId());

	return exitpage;
	}


	// registration page
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(@ModelAttribute("user") User user) {
		return "register";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registrationValidation(@ModelAttribute @Valid User user, BindingResult result, Model model) {
		String exitpage;
		if (result.hasErrors()) {
			exitpage = "register";
		} else if (!userService.registerNewUser(user)) {
			result.rejectValue("username", "", "Username taken. Use different username.");
			exitpage = "register";
		} else {
			model.addAttribute("registrationStatusMessage",
					"Registration successful!!! <a href=\"/login\" class=\"text-primary\">Go to login page</a>");
			exitpage = "register";
		}
		return exitpage;
	}

}
