package com.hp.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

import com.hp.domain.Account;
import com.hp.service.AccountService;


public class LoginController extends SimpleFormController{
	
	@Autowired
	private AccountService accountService;
	
	public LoginController(){
		setCommandClass(Account.class);
		setCommandName("loginForm");
	}
	
	@Override
	protected ModelAndView onSubmit(HttpServletRequest request,
			HttpServletResponse response, Object command, BindException errors)
			throws Exception {

		Account account = (Account)command;
		System.out.println(account.getUserName() + " - " + account.getPw());
		
		Account acc = accountService.Authenticate(account.getUserName(), account.getPw());
		
		if(acc != null){
			request.getSession().setAttribute("LOGIN", true);
			request.getSession().setAttribute("ACCOUNT", acc);
			
			//return new ModelAndView("CustomerSuccess","account",account);
			return new ModelAndView("redirect:/detail.html?id=" + acc.getId());
		
		}
		else{
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("account", null);
			return new ModelAndView("redirect:/login.html", "model", map);
		}
	}
}
