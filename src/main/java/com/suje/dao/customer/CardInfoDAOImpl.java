package com.suje.dao.customer;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.customer.CardInfoVO;

@Repository
public class CardInfoDAOImpl implements CardInfoDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	@Override
	public CardInfoVO getCardInfo(String id) {
		
		System.out.println("=> CardInfoDAO 실행");
		return mybatis.selectOne("cardInfoDAO.getCardInfo",id);
		 
	}
}
