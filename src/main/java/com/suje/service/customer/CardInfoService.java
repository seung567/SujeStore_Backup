package com.suje.service.customer;

import com.suje.domain.customer.CardInfoVO;

public interface CardInfoService {

	public CardInfoVO getCardInfo(String id);
	
	public int updateCardInfo(CardInfoVO vo);
	
	
	
	
}
