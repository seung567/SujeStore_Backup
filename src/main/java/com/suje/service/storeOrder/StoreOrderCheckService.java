package com.suje.service.storeOrder;

import java.util.List;

import com.suje.domain.storeOrder.StoreOrderCheckVO;

public interface StoreOrderCheckService {
	public List<StoreOrderCheckVO> getStoreOrderCheck(String id);
	public List<StoreOrderCheckVO> getCancelOrderCheck(String id);
	public List<StoreOrderCheckVO> getReturnOrderCheck(String id);
}
