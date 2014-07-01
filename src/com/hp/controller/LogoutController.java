package com.hp.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.hp.service.AccountService;

public class LogoutController extends AbstractController{
	@Autowired
	private AccountService accountService;
	
	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		request.getSession().setAttribute("LOGIN", null);
		request.getSession().setAttribute("ACCOUNT", null);
		
		return new ModelAndView("redirect:/login.html");
	}
}
