package com.suje.dao.customer;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.customer.AccountVO;

@Repository
public class CustomerAccountDAOImpl implements CustomerAccountDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	@Override
	public AccountVO getCustomerAccount(String id) { 
		// TODO Auto-generated method stub
		System.out.println("레포지토리 실행");
		return mybatis.selectOne("CustomerAccountDAO.getCustomerAccount", id);
	}

}
