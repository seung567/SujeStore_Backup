package com.suje.dao.customer;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.customer.PayVO;

@Repository
public class CustomerPayDAOImpl implements CustomerPayDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(CustomerPayDAOImpl.class);
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	@Override
	public int getCountPageTotal(String id) {
		logger.info("getCountPageTotal // Repository");
		return mybatis.selectOne("CustomerOrderListDAO.getCountPageTotal", id);
	}
	
	@Override
	public List<PayVO> getPayList(PayVO vo) {
		logger.info("getPayList // Repository");
		return mybatis.selectList("CustomerOrderListDAO.getPayList", vo);
	}
	
	
}
