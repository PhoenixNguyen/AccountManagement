package com.hp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hp.domain.Account;

@Repository("AccountDAO")
public class AccountDAOImpl implements AccountDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void saveAccount(Account account){
		sessionFactory.getCurrentSession().saveOrUpdate(account);
		
	}
	
	@SuppressWarnings("unchecked")
	public List<Account> getAccountList(){
		return sessionFactory.getCurrentSession().createCriteria(Account.class).list();
		
	}
	
	public Account getAccount(int id){
		return (Account)sessionFactory.getCurrentSession().get(Account.class, id);
	}
	
	public void updateAccount(Account account){
		sessionFactory.getCurrentSession().update(account);
		sessionFactory.getCurrentSession().flush();
	}
	
	public void deleteAccount(Account account){
		sessionFactory.getCurrentSession().delete(account);
		sessionFactory.getCurrentSession().flush();
		sessionFactory.getCurrentSession().beginTransaction().commit();
	}
	
	public void deleteAccount(int stt){
		Query query = sessionFactory.getCurrentSession().createQuery("update Account set status = 3 where id = " + stt);
		query.executeUpdate();
		sessionFactory.getCurrentSession().beginTransaction().commit();
	}
	
	public Account getAccount(String username){
		Query query = sessionFactory.getCurrentSession().createQuery("from Account where userName = '" + username+"'");
		
		return (Account)query.uniqueResult();
	}
	
	public Account Authenticate(String id, String pw){
		Query query = sessionFactory.getCurrentSession().createQuery("from Account where userName = '" + id+"' and pw= '" +pw+ "'");
		return (Account)query.uniqueResult();
	}
}
