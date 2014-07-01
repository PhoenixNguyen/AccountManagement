package com.hp.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.hp.domain.Account;

public class EditValidator implements Validator{

	@Override
	public boolean supports(Class clazz) {
				
		return Account.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		//ValidationUtils.rejectIfEmpty(errors, "pw", "required.pw", "Bạn chưa nhập mật khẩu!");
		ValidationUtils.rejectIfEmpty(errors, "id", "required.id", "Bạn chưa nhập tài khoản!");
		
		
		Account account = (Account)target;
		
		if(account.getUserName().length() > 50){
			errors.rejectValue("id", "required.idlength");
		}
		
		if(account.getPw().length() > 50){
			errors.rejectValue("pw", "required.pwlength");
		}
		if(account.getName().length() > 100){
			errors.rejectValue("name", "required.namelength");
		}
		if(account.getAddress().length() > 200){
			errors.rejectValue("address", "required.addresslength");
		}
		if(account.getNote().length() > 200){
			errors.rejectValue("note", "required.notelength");
		}
	}
	
	
}
