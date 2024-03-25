package com.suje.service.customer;

import java.util.List;

import com.suje.domain.customer.EtcVO;
import com.suje.domain.customer.OrderListVO;

public interface CustomerOrderService {

	public int getCountPageTotal(String id);
	public List<OrderListVO> getOrderList(OrderListVO vo);
	public List<EtcVO> getEtcList(int o_code);
	
}
