package com.suje.service.customer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.dao.customer.CustomerInfoDAO;
import com.suje.domain.customer.ReviewVO;

@Service
public class CustomerReviewServiceImpl implements CustomerReviewService {

	@Autowired
	CustomerInfoDAO dao;
	
	@Override
	public List<ReviewVO> getCustomerReview(String id) {
		
		System.out.println("=> CustomerReviewService 실행");
		 List<ReviewVO> vo = dao.getCustomerReview(id);
		return vo;
	}
	
	
}
