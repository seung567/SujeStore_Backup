package com.suje.service.customer;

import java.util.List;

import com.suje.domain.customer.QnAVO;

public interface CustomerQnAService {
	
	public List<QnAVO> getCustomerQnA(String id);
	
	public void insertQnA(QnAVO vo);

}
