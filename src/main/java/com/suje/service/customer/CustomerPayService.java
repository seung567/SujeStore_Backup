package com.suje.service.customer;

import java.util.List;
import java.util.Map;

import com.suje.domain.customer.PayVO;

public interface CustomerPayService {
	
	public int getCountPageTotal(String id);
	
	public int getFleaCountPageTotal(String id);
	
	public Map<String,Object> getPayList(Map<String,Object> resultMap);
	
	public void insertFleaPayCancel(PayVO vo);
}
