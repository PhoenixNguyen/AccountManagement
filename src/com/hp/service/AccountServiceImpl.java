package com.hp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.hp.dao.AccountDAO;
import com.hp.domain.Account;

@Service
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class AccountServiceImpl implements AccountService{
	@Autowired
	AccountDAO accountDAO;
	
	public void addAccount(Account account){
		accountDAO.saveAccount(account);
	}
	public List<Account> getAccountList(){
		return accountDAO.getAccountList();
	}
	
	public Account getAccount(int id){
		
		return accountDAO.getAccount(id);
	}
	
	public void updateAccount(Account account){
		accountDAO.updateAccount(account);
	}
	
	public void deleteAccount(Account account){
		accountDAO.deleteAccount(account);
	}
	
	public void deleteAccount(int stt){
		accountDAO.deleteAccount(stt);
	}
	
	public Account getAccount(String username){
		return accountDAO.getAccount(username);
	}
}
