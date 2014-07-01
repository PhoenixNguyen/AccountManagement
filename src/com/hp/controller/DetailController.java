package com.hp.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

import com.hp.common.ConvertParameter;
import com.hp.domain.Account;
import com.hp.service.AccountService;

public class DetailController extends AbstractController{
	@Autowired
	private AccountService accountService;
	
	@Override
	protected ModelAndView handleRequestInternal(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		if(request.getSession().getAttribute("LOGIN") == null ){
			
			return new ModelAndView("redirect:/login.html");
			
		}

		Map<String, Object> map = new HashMap<String, Object>();
		
		Account account = new Account();
		int id = ConvertParameter.paramToInt(request.getParameter("id"));
		
		account = accountService.getAccount(id);
		
		map.put("account", account);
		
		return new ModelAndView("account-detail", map);
	}
}
