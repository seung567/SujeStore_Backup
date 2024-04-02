package com.suje.service.customer;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.controller.customer.CustomerReviewController;
import com.suje.dao.customer.CustomerReviewDAO;
import com.suje.domain.customer.ReviewVO;

@Service
public class CustomerReviewServiceImpl implements CustomerReviewService {
	
	private static final Logger logger = LoggerFactory.getLogger(CustomerReviewServiceImpl.class);
	
	@Autowired
	CustomerReviewDAO dao;
	
	@Override
	public int getCountPageTotal(String id) {
		logger.info("getCountPageTotal // Service");
		return dao.getCountPageTotal(id);
	}
	
	@Override
	public Map<String,Object> getCustomerReview(Map<String,Object> resultMap) {
		logger.info("getCustomerReview // Service");
		return dao.getCustomerReview(resultMap);
	}

	@Override
	public void insertReview(ReviewVO vo) {
		System.out.println("=> Review작성 Service 실행");
		dao.insertReview(vo);
	}
	
	@Override
	public int getTotalCountPage(String id) {
		logger.info("getTotalCountPage 실행");
		return dao.getTotalCountPage(id);
	}
	
	@Override
	public List<ReviewVO> getPageList(ReviewVO vo) {
		logger.info("getPageList 실행");
		return dao.getPageList(vo);
	}
	
}
