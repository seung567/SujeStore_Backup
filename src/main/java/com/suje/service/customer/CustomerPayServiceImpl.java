package com.suje.service.customer;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.dao.customer.CustomerPayDAO;
import com.suje.domain.customer.PayVO;


@Service
public class CustomerPayServiceImpl implements CustomerPayService {
	
	private static final Logger logger = LoggerFactory.getLogger(CustomerPayServiceImpl.class);

	@Autowired
	CustomerPayDAO dao;

	@Override
	public int getCountPageTotal(String id) {
		logger.info("getCountPageTotal // Service");
		return dao.getCountPageTotal(id);
	}
	
	@Override
	public int getFleaCountPageTotal(String id) {
		logger.info("getFleaCountPageTotal // Service");
		return dao.getFleaCountPageTotal(id);
	}
	
	@Override
	public Map<String,Object> getPayList(Map<String,Object> resultMap) {
		logger.info("getPayList // Service");
		return dao.getPayList(resultMap);
	}
	
	

	
}
