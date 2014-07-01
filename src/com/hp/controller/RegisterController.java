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

public class RegisterController extends SimpleFormController{
	
	@Autowired
	private AccountService accountService;
	
	public RegisterController(){
		setCommandClass(Account.class);
		setCommandName("registerForm");
	}
	
	@Override
	protected ModelAndView onSubmit(HttpServletRequest request,
			HttpServletResponse response, Object command, BindException errors)
			throws Exception {
		
		Account account = (Account)command;
		System.out.println(account.getId() + " - " + account.getPw());
		
		Account old = accountService.getAccount(account.getId());
		if(old != null){
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("account", old);
			
			return new ModelAndView("redirect:/register.html", "model", map);
		}
		else{
			accountService.addAccount(account);
			System.out.println("Save new account");
			return new ModelAndView("redirect:/detail.html?id=" +  accountService.getAccount(account.getId()).getStt());
		}
	}
}
