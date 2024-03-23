package com.suje.service.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.dao.customer.CardInfoDAO;
import com.suje.domain.customer.CardInfoVO;

@Service
public class CardInfoServiceImpl implements CardInfoService {
	
	@Autowired
	CardInfoDAO cardInfoDao; 
	
	
	@Override
	public CardInfoVO getCardInfo(String id) {
		
		System.out.println("=> CardInfoServiceImpl  => getCardInfo 실행");
		CardInfoVO vo =  cardInfoDao.getCardInfo(id);
		return vo;
		
	}
	
	
}
