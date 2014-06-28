package com.hp.service;

import java.util.List;

import com.hp.domain.Account;

public interface AccountService {
	
	public void addAccount(Account account);
	public List<Account> getAccountList();
	
	public Account getAccount(int id);
	public Account getAccount(String username);
	
	public void updateAccount(Account account);
	
	public void deleteAccount(Account account);
	public void deleteAccount(int stt);
}
