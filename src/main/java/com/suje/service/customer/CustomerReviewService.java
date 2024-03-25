package com.suje.service.customer;

import java.util.List;

import com.suje.domain.customer.ReviewVO;

public interface CustomerReviewService {
	
	public List<ReviewVO> getCustomerReview(String id);

}
