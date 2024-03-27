package com.suje.service.customer;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.dao.customer.CustomerOrderDAO;
import com.suje.domain.customer.EtcVO;
import com.suje.domain.customer.FinalOrderVO;
import com.suje.domain.customer.OrderListVO;

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {
	
	private static final Logger logger = LoggerFactory.getLogger(CustomerOrderServiceImpl.class);
	
	@Autowired
	CustomerOrderDAO orderDAO;
	
	// 전체 페이지 수를 구하는 메소드
	@Override
	public int getCountPageTotal(String id) {
		
		logger.info("getCountPageTotal // Service");
		int countPage = orderDAO.getCountPageTotal(id);
		return countPage;
		
	}
	
	// 페이지별 오더 리스트 구하는 메소드
	@Override
	public List<OrderListVO> getOrderList(OrderListVO vo) {
		
		logger.info("getOrderList // Service");
		List<OrderListVO> getList = orderDAO.getOrderList(vo);
		return getList;
		
	}
	
	// 기타 요청 사항 불러오기
	public List<EtcVO> getEtcList(int o_code){
		
		logger.info("getEtcList // Service");
		List<EtcVO> getEtcList = orderDAO.getEtcList(o_code);
		return getEtcList;
	}
	
	@Override
	public FinalOrderVO getFinalOrder(int storeOrderNO) {
		return orderDAO.getFinalOrder(storeOrderNO);
	}
}
