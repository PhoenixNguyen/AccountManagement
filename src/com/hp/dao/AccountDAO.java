package com.hp.dao;

import java.util.List;

import com.hp.domain.Account;

public interface AccountDAO {
	public void saveAccount(Account account);
	public List<Account> getAccountList();
	
	public Account getAccount(int id);
	public Account getAccount(String username);
	
	public void updateAccount(Account account);
	
	public void deleteAccount(Account account);
	public void deleteAccount(int stt);
}
