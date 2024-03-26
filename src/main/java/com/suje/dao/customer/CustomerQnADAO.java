package com.suje.dao.customer;

import java.util.List;

import com.suje.domain.customer.QnAVO;

public interface CustomerQnADAO {
	
	public List<QnAVO> getCustomerQnA(String id);
	
	public void insertQnA(QnAVO vo);

}
