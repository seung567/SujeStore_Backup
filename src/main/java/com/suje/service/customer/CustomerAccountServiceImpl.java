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
		System.out.println("서비스 실행");
		AccountVO vo = dao.getCustomerAccount(id);
		return vo;
	}

}
