package com.suje.dao.customer;

import com.suje.domain.customer.CardInfoVO;

public interface CustomerCardInfoDAO {
	
	public CardInfoVO getCardInfo(String id);
	
	public int updateCardInfo(CardInfoVO vo);
	
}
