package com.suje.dao.customer;

import java.util.List;

import com.suje.domain.customer.ReviewVO;

public interface CustomerReviewDAO {
	
	public List<ReviewVO> getCustomerReview(String id);
	
	public void insertReview(ReviewVO vo);

}
