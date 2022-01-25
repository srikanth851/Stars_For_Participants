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

//contoller for admin login page
@Controller
@SessionAttributes("verifiedUser")
public class AdminLoginController {

	@Autowired
	UserService userService;
	@Autowired
	CustomAdminValidator customAdminValidator;

	// show this page at start
	@RequestMapping(value = "/adminlogin", method = RequestMethod.GET)
	public String loginPageGet(@ModelAttribute("user") User user) {
		return "adminlogin";
	}

	// admin home page GET method- need to verify credentials
	@RequestMapping(value = "/adminhomepage", method = RequestMethod.GET)
	public String adminHome(@ModelAttribute("user") User user, Model m) {
		//for security
//		if(m.getAttribute("verifiedUser")==null) {
//			return "loginpage";
//		}
		return "adminHomePage";
	}

	// verify and redirect to welcome after successful login
	@RequestMapping(value = "/adminhomepage", method = RequestMethod.POST)
	public String adminHome(@ModelAttribute("user") @Valid User user, BindingResult result, ModelMap model) {
		String exitpage;
		customAdminValidator.validate(user, result);
		User currentUser = userService.checkForExistingUser(user);
		if (result.hasErrors()) {
			exitpage = "adminlogin";
		} else if (currentUser.getUsername() == null) {
			exitpage = "adminlogin";
		} else {
			model.addAttribute("verifiedUser", currentUser);
			exitpage = "adminHomePage";
		}
		return exitpage;
	}

}
