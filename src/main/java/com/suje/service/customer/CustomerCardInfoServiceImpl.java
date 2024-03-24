package com.suje.service.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.dao.customer.CustomerCardInfoDAO;
import com.suje.domain.customer.CardInfoVO;

@Service
public class CustomerCardInfoServiceImpl implements CustomerCardInfoService {
	
	@Autowired
	CustomerCardInfoDAO cardInfoDao; 
	
	
	@Override
	public CardInfoVO getCardInfo(String id) {
		
		System.out.println("=> CardInfoServiceImpl  => getCardInfo 실행");
		CardInfoVO vo =  cardInfoDao.getCardInfo(id);
		return vo;
		
	}
	
	@Override
	public int updateCardInfo(CardInfoVO vo) {
	
		System.out.println("=> CardInfoService 실행");
		int vo1 =  cardInfoDao.updateCardInfo(vo);
		return vo1;
 }
}