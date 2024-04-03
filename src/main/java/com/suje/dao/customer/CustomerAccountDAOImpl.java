package com.suje.dao.customer;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.customer.AccountVO;
import com.suje.domain.customer.CardVO;

@Repository
public class CustomerAccountDAOImpl implements CustomerAccountDAO {

	@Autowired
	SqlSessionTemplate mybatis;

	@Override
	public AccountVO getCustomerAccount(String id) {
		// TODO Auto-generated method stub
		System.out.println("=> CustomerAccountDAOImpl  => getCustomerAccount 실행");
		return mybatis.selectOne("CustomerAccountDAO.getCustomerAccount", id);
	}

	@Override
	public int accountUpdate(AccountVO accountVO) {
		// TODO Auto-generated method stub
		System.out.println("=> CustomerAccountDAOImpl  => accountUpdate 실행");
		return mybatis.update("CustomerAccountDAO.updateAccount",accountVO);
	}
}
