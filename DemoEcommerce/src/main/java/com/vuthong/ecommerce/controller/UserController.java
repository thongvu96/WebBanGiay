/**
 * UserController.java
 * Jan 9, 2019
 */
package com.vuthong.ecommerce.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.vuthong.ecommerce.entities.User;
import com.vuthong.ecommerce.services.UserService;

/**
 * @author VuThong
 */
@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	// Login
	@RequestMapping(value = {"","/","/login"}, method = RequestMethod.GET)
    public String login(Model model, String error) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        return "login";
    }
	
	@RequestMapping("/logout")
	public ModelAndView logout() {
		ModelAndView mav = new ModelAndView("redirect:/login");
		return mav;
	}
	
	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public ModelAndView registrationGET() {
		ModelAndView mav = new ModelAndView("registration");
		mav.addObject("userForm", new User());
		return mav;
	}
	
	@RequestMapping(value = "/registration", method = RequestMethod.POST)
	public ModelAndView registrationPOST(@ModelAttribute("userForm") User userForm, BindingResult result) {
		boolean check = !result.hasErrors();
		if (check) {
			User user = userService.findUserByEmail(userForm.getEmail());
			if (user != null) {
				ModelAndView m = new ModelAndView("registration");
				m.addObject("msg", "Email đã tồn tại");
				return m;
			} else {
				userService.saveUser(userForm);
				return new ModelAndView("redirect:/login");
			}
			
		}
		return new ModelAndView("registration");
	}
}
