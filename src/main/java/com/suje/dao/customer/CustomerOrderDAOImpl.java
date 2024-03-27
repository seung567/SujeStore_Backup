package com.suje.dao.customer;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.customer.EtcVO;
import com.suje.domain.customer.FinalOrderVO;
import com.suje.domain.customer.OrderListVO;
import com.suje.service.customer.CustomerOrderServiceImpl;

@Repository
public class CustomerOrderDAOImpl implements CustomerOrderDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(CustomerOrderDAOImpl.class);
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	// 전체 페이지 구하는 메소드
	@Override
	public int getCountPageTotal(String id) {
		// TODO Auto-generated method stub
		logger.info("getCountPageTotal // Repository");
		int countTotalPage = mybatis.selectOne("customerOrderDAO.getOrderListCount",id);
			
		return countTotalPage;
	}
	
	// 페이지별 주문 내역 리스트
	@Override
	public List<OrderListVO> getOrderList(OrderListVO vo) {
		// TODO Auto-generated method stub
		logger.info("getOrderList // Repository");
		List<OrderListVO> getOrderList = mybatis.selectList("customerOrderDAO.getOrderList",vo);
		return getOrderList;
	}
	
	@Override
	public List<EtcVO> getEtcList(int o_code) {
		// TODO Auto-generated method stub
		
		logger.info("getEtcList // Repository");
		return mybatis.selectList("customerOrderDAO.getEtcList",o_code);
		
	}
	
	@Override
	public FinalOrderVO getFinalOrder(int storeOrderNO) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("customerOrderDAO.getFinalOrder",storeOrderNO);
	}
}
