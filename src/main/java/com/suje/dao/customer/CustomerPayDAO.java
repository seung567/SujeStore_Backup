package com.suje.dao.customer;

import java.util.List;

import com.suje.domain.customer.PayVO;

public interface CustomerPayDAO {
	
	public int getCountPageTotal(String id);
	
	public List<PayVO> getPayList(PayVO vo);

}
