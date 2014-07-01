package com.hp.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.validation.BindException;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

import com.hp.common.MailMail;
import com.hp.domain.Account;
import com.hp.service.AccountService;

public class MailController extends SimpleFormController{
	
	
	public MailController(){
		setCommandClass(Account.class);
		setCommandName("mailForm");
	}
	
	@Override
	protected ModelAndView onSubmit(HttpServletRequest request,
			HttpServletResponse response, Object command, BindException errors)
			throws Exception {

		Account account = (Account)command;
		System.out.println(account.getEmail());
		
		ApplicationContext context = 
             new ClassPathXmlApplicationContext("Spring-Mail.xml");
 
    	MailMail mm = (MailMail) context.getBean("mailMail");
        mm.sendMail("hoangphuongtest@gmail.com",
    		   "hoangphuong@1pay.vn",
    		   "Testing123", 
    		   "Testing only \n\n Hello Spring Email Sender");
 
    
		return new ModelAndView("redirect:/login.html");
		
	}
}
