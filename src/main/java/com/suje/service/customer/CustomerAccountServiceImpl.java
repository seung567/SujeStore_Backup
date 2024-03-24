package com.suje.service.customer;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.controller.customer.CustomerAccountController;
import com.suje.dao.customer.CustomerAccountDAO;
import com.suje.domain.customer.AccountVO;

@Service
public class CustomerAccountServiceImpl implements CustomerAccountService {
	
	private static final Logger logger = LoggerFactory.getLogger(CustomerAccountServiceImpl.class);
	
	@Autowired
	CustomerAccountDAO dao;
	

	@Override
	public AccountVO getCustomerAccount(String id) {
		// TODO Auto-generated method stub
		logger.info("getCustomerAccount");
		AccountVO vo = dao.getCustomerAccount(id);
		return vo;
	}
	
	@Override
	public int accountUpdate(AccountVO accountVO) {
		// TODO Auto-generated method stub
		logger.info("accountUpdate");
		int resultNum = dao.accountUpdate(accountVO);
		return resultNum;
	}
}
