package com.suje.service.customer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.dao.customer.CustomerReviewDAO;
import com.suje.domain.customer.ReviewVO;

@Service
public class CustomerReviewServiceImpl implements CustomerReviewService {

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
	
	
}
