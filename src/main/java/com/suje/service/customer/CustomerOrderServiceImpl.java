package com.suje.service.customer;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.controller.customer.CustomerOrderController;
import com.suje.dao.customer.CustomerOrderDAO;
import com.suje.domain.customer.OrderListVO;

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {
	
	private static final Logger logger = LoggerFactory.getLogger(CustomerOrderServiceImpl.class);
	
	@Autowired
	CustomerOrderDAO orderDAO;
	
	@Override
	public int getCountPageTotal(String id) {
		// TODO Auto-generated method stub
		logger.info("getOrderList // Service");
		int countPage = orderDAO.getCountPageTotal(id);
		
		return countPage;
	}
	
}
