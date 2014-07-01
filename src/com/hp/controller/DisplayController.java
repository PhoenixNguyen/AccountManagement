package com.hp.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.hp.domain.Account;
import com.hp.service.AccountService;

public class DisplayController extends AbstractController{
	@Autowired
	private AccountService accountService;
	
	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		if(request.getSession().getAttribute("LOGIN") == null ){
			
			return new ModelAndView("redirect:/login.html");
			
		}
		
		Account acc = (Account)request.getSession().getAttribute("ACCOUNT");
		
		if(acc != null && acc.getPermission() == 2){
			return new ModelAndView("redirect:/detail.html?id=" + acc.getId());
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("account", accountService.getAccountList());
		
		return new ModelAndView("account-list", map);
	}
}
