package com.suje.dao.storeOrder;

import java.util.List;

import com.suje.domain.storeOrder.StoreOrderCheckVO;

public interface StoreOrderCheckDAO {
	public List<StoreOrderCheckVO> getStoreOrderCheck(String id);
}
