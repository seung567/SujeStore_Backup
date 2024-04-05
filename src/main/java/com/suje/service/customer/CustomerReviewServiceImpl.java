package com.suje.service.customer;

import java.util.List;

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
	public List<ReviewVO> getCustomerReview(String id) {	
		System.out.println("=> CustomerReviewService 실행");
		 List<ReviewVO> vo = dao.getCustomerReview(id);
		return vo;
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
