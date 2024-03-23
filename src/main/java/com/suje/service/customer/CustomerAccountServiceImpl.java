package com.suje.service.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.dao.customer.CustomerAccountDAO;
import com.suje.domain.customer.AccountVO;

@Service
public class CustomerAccountServiceImpl implements CustomerAccountService {
	
	@Autowired
	CustomerAccountDAO dao;

	@Override
	public AccountVO getCustomerAccount(String id) {
		// TODO Auto-generated method stub
		System.out.println("=> CustomerAccountServiceImpl  => getCustomerAccount 실행");
		AccountVO vo = dao.getCustomerAccount(id);
		return vo;
	}
	
	@Override
	public int accountUpdate(AccountVO accountVO) {
		// TODO Auto-generated method stub
		System.out.println("=> CustomerAccountServiceImpl  => accountUpdate 실행");
		int resultNum = dao.accountUpdate(accountVO);
		return 0;
	}
}
