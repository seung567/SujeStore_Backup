package com.suje.service.storeOrder;

import java.util.List;

import com.suje.domain.storeOrder.StoreOrderListVO;

public interface StoreOrderListService {

	
	public List<StoreOrderListVO> getStoreOrderList(String storeID);
	
	
}
