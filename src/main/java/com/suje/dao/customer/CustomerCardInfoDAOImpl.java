package com.suje.dao.customer;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.customer.CardInfoVO;

@Repository
public class CustomerCardInfoDAOImpl implements CustomerCardInfoDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	@Override
	public CardInfoVO getCardInfo(String id) {
		
		System.out.println("CardInfoDAOImpl => getCardInfo 실행");
		return mybatis.selectOne("cardInfoDAO.getCardInfo",id);
		 
	}
	
	@Override
	public int updateCardInfo(CardInfoVO vo) {
	
		System.out.println("CardInfoDAOImpl => updateCardInfo 실행");
		return mybatis.update("cardInfoDAO.updateCardInfo",vo);
		
	}

}