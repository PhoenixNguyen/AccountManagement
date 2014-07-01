package com.hp.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;
import org.springframework.web.servlet.mvc.SimpleFormController;

import com.hp.service.AccountService;
import com.hp.common.ConvertParameter;
import com.hp.domain.Account;

public class EditController extends SimpleFormController{
	public EditController(){
		setCommandClass(Account.class);
		setCommandName("editForm");
	}
	
	@Override
	protected ModelAndView onSubmit(HttpServletRequest request,
			HttpServletResponse response, Object command, BindException errors)
			throws Exception {
		if(request.getSession().getAttribute("LOGIN") == null ){
			
			return new ModelAndView("redirect:/login.html");
			
		}

		Account account = (Account)command;
		System.out.println(account);
		
		accountService.updateAccount(account);
		
		//return new ModelAndView("CustomerSuccess","account",account);
		return new ModelAndView("redirect:/detail.html?id=" + account.getId());
		
	}
	
	@Override
	protected Object formBackingObject(HttpServletRequest request)
			throws Exception {

		Account account = new Account();
		int id = ConvertParameter.paramToInt(request.getParameter("id"));
		
		account = accountService.getAccount(id);
		return account;
	}
	
	@Override
	protected Map referenceData(HttpServletRequest request) throws Exception {
		
		Map referenceData = new HashMap();
		
		
		
		//Data referencing for country dropdown box
		Map<Integer,String> permission = new LinkedHashMap<Integer,String>();
		permission.put(1, "Admin");
		permission.put(2, "User");
		
		referenceData.put("permissionList", permission);
		
		
		
		return referenceData;
	}
	
	
	@Autowired
	private AccountService accountService;
	
	
	
	
}
