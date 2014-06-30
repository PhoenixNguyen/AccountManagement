package com.hp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

import com.hp.domain.Account;


public class LoginController extends SimpleFormController{
	public LoginController(){
		setCommandClass(Account.class);
		setCommandName("loginForm");
	}
	
	@Override
	protected ModelAndView onSubmit(HttpServletRequest request,
			HttpServletResponse response, Object command, BindException errors)
			throws Exception {

		Account account = (Account)command;
		System.out.println(account);
		//return new ModelAndView("CustomerSuccess","account",account);
		return new ModelAndView("redirect:/displayAccounts.html?page=1");
	}
}
