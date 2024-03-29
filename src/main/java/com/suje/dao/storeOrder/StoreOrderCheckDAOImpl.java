package com.suje.dao.storeOrder;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.storeOrder.StoreOrderCheckVO; 

@Repository
public class StoreOrderCheckDAOImpl implements StoreOrderCheckDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	@Override
	public  List<StoreOrderCheckVO> getStoreOrderCheck(String id) { 
		
		return mybatis.selectList("StoreOrderCheckDAO.getStoreOrderCheck", id);
	}
	@Override
	public  List<StoreOrderCheckVO> getCancelOrderCheck(String id) { 
		
		return mybatis.selectList("StoreOrderCheckDAO.getCancelOrderCheck", id);
	}
	@Override
	public  List<StoreOrderCheckVO> getReturnOrderCheck(String id) { 
		
		return mybatis.selectList("StoreOrderCheckDAO.getReturnOrderCheck", id);
	}
}
