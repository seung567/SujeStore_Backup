package com.suje.dao.customer;

import com.suje.domain.customer.CardInfoVO;

public interface CardInfoDAO {
	
	public CardInfoVO getCardInfo(String id);
	
	public int updateCardInfo(CardInfoVO vo);
	
}
