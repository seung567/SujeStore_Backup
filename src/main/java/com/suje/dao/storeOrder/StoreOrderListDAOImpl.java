package com.suje.dao.storeOrder;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.storeOrder.StoreOrderListVO;

@Repository
public class StoreOrderListDAOImpl implements StoreOrderListDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	// Suje 톡톡 주문 내역
	@Override
	public List<StoreOrderListVO> getStoreOrderList(String storeID) {
		
		return mybatis.selectList("storeOrderListDao.getStoreOrderList",storeID);
	}
	
}
