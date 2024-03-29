package com.suje.dao.customer;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.customer.ReviewVO;
import com.suje.service.customer.CustomerReviewServiceImpl;

@Repository
public class CustomerReviewDAOImpl implements CustomerReviewDAO {

	private static final Logger logger = LoggerFactory.getLogger(CustomerReviewServiceImpl.class);
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	@Override
	public List<ReviewVO> getCustomerReview(String id) {
		logger.info("getCustomerReview 실행");
		return mybatis.selectList("CustomerDAO.getCustomerReview", id);
	}
	
	@Override
	public void insertReview(ReviewVO vo) {
		logger.info("insertReview 실행");
		mybatis.insert("CustomerDAO.insertReview", vo);
		System.out.println("insertReview vo : " + vo);	
	}
	
	@Override
	public int getTotalCountPage(String id) {
		logger.info("getTotalCountPage 실행");
		return mybatis.selectOne("CustomerDAO.getTotalCountPage",id);
	}
	
	@Override
	public List<ReviewVO> getPageList(ReviewVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectList("CustomerDAO.getPageList",vo);
	}
}
