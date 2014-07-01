package com.hp.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.catalina.connector.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hp.domain.Account;
import com.hp.service.AccountService;

@Controller
public class AccountController {

	@Autowired
	private AccountService accountService;
	
	@RequestMapping("/account-list")
	public ModelAndView showAccountList(){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("account", accountService.getAccountList());
		
		return new ModelAndView("account-list", map);
	}
	
	@RequestMapping("/register")
	public ModelAndView registerAccount(@ModelAttribute("account") Account account, BindingResult result){
		Map<String, Object> model = new HashMap<String, Object>();
		ArrayList<Integer> permission = new ArrayList<Integer>();
		permission.add(1);
		permission.add(2);
		
		ArrayList<String> label = new ArrayList<String>();
		label.add("Admin");
		label.add("User");
		
		model.put("permission", permission);
		model.put("label", label);
		
		return new ModelAndView("new-account", "model", model);
	}
	
	@RequestMapping("/new-account")
	public ModelAndView addAccount(@ModelAttribute("account") Account account, BindingResult result){
		Account old = accountService.getAccount(account.getUserName());
		if(old != null){
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("account", old);
			
			return new ModelAndView("new-account", "model", map);
		}
		else{
			accountService.addAccount(account);
			System.out.println("Save new account");
			return new ModelAndView("redirect:/account-list.html?page=1");
		}
	}
	
	@RequestMapping("/edit-account")
	public ModelAndView editAccount(@RequestParam(value = "id") int id,@ModelAttribute("account") Account account, BindingResult result){
		Map<String, Object> model = new HashMap<String, Object>();
		
		System.out.println("ID: " + id);
//		
		model.put("account", accountService.getAccount(id));
		return new ModelAndView("edit-account", "model", model);
	}
	
	@RequestMapping("/update-account")
	public ModelAndView updateAccount(@ModelAttribute("account") Account account, BindingResult result){
		
		
		accountService.updateAccount(account);
		System.out.println("update account");
		return new ModelAndView("redirect:/account-list.html?page=1");
	}
	
	@RequestMapping("/delete-account")
	public ModelAndView deleteAccount(@RequestParam(value = "id") int id, @ModelAttribute("account") Account account, BindingResult result){
		
		
		//accountService.deleteAccount(accountService.getAccount(id));
		accountService.deleteAccount(id);
		System.out.println("delete account");
		return new ModelAndView("redirect:/account-list.html?page=1");
	}
	
}
