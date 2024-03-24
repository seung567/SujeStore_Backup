package com.suje.dao.customer;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.customer.OrderListVO;
import com.suje.service.customer.CustomerOrderServiceImpl;

@Repository
public class CustomerOrderDAOImpl implements CustomerOrderDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(CustomerOrderServiceImpl.class);
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	// 고객 주문 내역 리스트
	@Override
	public int getCountPageTotal(String id) {
		// TODO Auto-generated method stub
		logger.info("getOrderList // Repository");
		int countTotalPage = mybatis.selectOne("customerOrderDAO.getOrderList",id);
			
		return countTotalPage;
	}
}
