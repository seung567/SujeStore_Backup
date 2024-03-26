package com.suje.dao.customer;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.customer.QnAVO;

@Repository
public class CustomerQnADAOImpl implements CustomerQnADAO {
	
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

}
