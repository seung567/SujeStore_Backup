package com.suje.service.customer;

import java.util.List;

import com.suje.domain.customer.PayVO;

public interface CustomerPayService {
	
	public int getCountPageTotal(String id);
	
	public List<PayVO> getPayList(PayVO vo);

}
