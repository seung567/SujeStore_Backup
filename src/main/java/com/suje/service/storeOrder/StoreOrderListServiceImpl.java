package com.suje.service.storeOrder;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.dao.storeOrder.StoreOrderListDAO;
import com.suje.domain.storeOrder.StoreOrderListVO;

@Service
public class StoreOrderListServiceImpl implements StoreOrderListService {
	
	@Autowired
	StoreOrderListDAO storeOrderListDao;
	
	// Suje 톡톡 주문 내역
	@Override
	public List<StoreOrderListVO> getStoreOrderList(String storeID) {
		return storeOrderListDao.getStoreOrderList(storeID);
	}
	
	
	
}
