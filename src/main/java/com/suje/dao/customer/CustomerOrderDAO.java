package com.suje.dao.customer;

import java.util.List;

import com.suje.domain.customer.EtcVO;
import com.suje.domain.customer.FinalOrderVO;
import com.suje.domain.customer.OrderListVO;

public interface CustomerOrderDAO {
	
	public int getCountPageTotal(String id);
	public List<OrderListVO> getOrderList(OrderListVO vo);
	public List<EtcVO> getEtcList(int o_code);
	public FinalOrderVO getFinalOrder(int storeOrderNO);
	
}
