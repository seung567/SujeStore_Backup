package com.suje.dao.customer;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public int getFleaCountPageTotal(String id) {
		logger.info("getFleaCountPageTotal // Repository");
		return mybatis.selectOne("CustomerOrderListDAO.getFleaCountPageTotal", id);
	}
	
	@Override
	public Map<String,Object> getPayList(Map<String,Object> resultMap) {
		logger.info("getPayList // Repository");
//		return mybatis.selectList("CustomerOrderListDAO.getPayList", vo);
		Map<String,Object> finalResultMap = new HashMap<String, Object>();
		// 1. 
		List<PayVO> orderList = mybatis.selectList("CustomerOrderListDAO.getPayList", resultMap);
		// 2.
		List<PayVO> fleaList = mybatis.selectList("CustomerOrderListDAO.getFleaPayList", resultMap);
		// 3.
		// 4.
		
		// 5. 맵에 저장 하여 return
		finalResultMap.put("orderList",orderList);
		finalResultMap.put("fleaList",fleaList);
		
		return finalResultMap;
	}
	
	@Override
	public void insertFleaPayCancel(PayVO vo) {
		System.out.println("=> flea결제취소요청 Repository");
		mybatis.insert("CustomerOrderListDAO", vo);
		System.out.println("insertFleaPayCancel vo : " + vo);
	}

	
	
}
