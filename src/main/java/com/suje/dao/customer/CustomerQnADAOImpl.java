package com.suje.dao.customer;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.customer.QnAVO;

@Repository
public class CustomerQnADAOImpl implements CustomerQnADAO {
	
	private static final Logger logger = LoggerFactory.getLogger(CustomerOrderDAOImpl.class);
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	@Override
	public List<QnAVO> getCustomerQnA(String id) {
		System.out.println("CustomerQnADAOImpl => getCustmerQnA 실행");
		return mybatis.selectList("CustomerDAO.getCustomerQnA", id);
	}
	
	@Override
	public void insertQnA(QnAVO vo) {
		System.out.println("=> Q&A 작성 Repository");
		mybatis.insert("CustomerDAO.insertQnA", vo);
		System.out.println("insertQnA vo : " + vo);
	}
	
	@Override
	public QnAVO getCustomerQnAA(int qna_code) {
		System.out.println("CustomerQnADAOImpl => getCustmerQnAA 실행");
		return mybatis.selectOne("CustomerDAO.getCustomerQnAA", qna_code);
	}
	
	@Override
	public int getCountPageTotal(String id) {
		logger.info("getCountPageTotal => Repository");
		int countTotalPage = mybatis.selectOne("CustomerDAO.getQnAListCount", id);
		return countTotalPage;
	}

}
