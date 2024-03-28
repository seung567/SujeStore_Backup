package com.suje.dao.customer;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.customer.ReviewVO;

@Repository
public class CustomerReviewDAOImpl implements CustomerReviewDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	@Override
	public List<ReviewVO> getCustomerReview(String id) {
		System.out.println("CustomerReviewDAOImpl => getCustomerReview 실행");
		return mybatis.selectList("CustomerDAO.getCustomerReview", id);
	}
	
	@Override
	public void insertReview(ReviewVO vo) {
		System.out.println("=> Review 작성 Repository");
		mybatis.insert("CustomerDAO.insertReview", vo);
		System.out.println("insertReview vo : " + vo);	
	}
	
}
