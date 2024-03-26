package com.suje.dao.storeOrder;

import java.util.List;

import com.suje.domain.storeOrder.StoreOrderListVO;

public interface StoreOrderListDAO {
	
	public List<StoreOrderListVO> getStoreOrderList(String storeID);
	
}
