package com.hp.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hp.domain.Account;

@Controller
public class SignUpController {

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String register(
			Account account,
			BindingResult result) {
		
		
		return "register";
		
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addAccount(
			@Valid Account account,
			BindingResult result) {
		
		if (result.hasErrors()) {
			return "register";
		} else {
			return "account-list.html";
		}
	}
}
