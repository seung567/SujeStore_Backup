package com.suje.dao.customer;

import java.util.List;

import com.suje.domain.customer.ReviewVO;

public interface CustomerReviewDAO {
	
	public List<ReviewVO> getCustomerReview(String id);
	
	public void insertReview(ReviewVO vo);
	
	public int getTotalCountPage(String id); // 전체 페이지 수 계산
	
	public List<ReviewVO> getPageList(ReviewVO vo); // 페이지에 맞는 리스트 가져오기

}
