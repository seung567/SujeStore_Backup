package com.suje.service.storeAdmin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.dao.storeAdmin.StoreGoodsSUDAO;
import com.suje.domain.storeAdmin.StoreGoodsSUVO;
import com.suje.domain.storeAdmin.StoreProfileVO;

@Service
public class StoreGoodsSUServiceImpl implements StoreGoodsSUService{

	@Autowired
	StoreGoodsSUDAO dao;
	
	@Override
	// 1.메소드 이름 맞추기
	public  List<StoreGoodsSUVO> storeGoodsMainPage(String id) { 
		
		 List<StoreGoodsSUVO> goodsList = dao.storeGoodsMainPage(id); // 단일 객체 대신 리스트로 받기
	        
	        return goodsList;
	}
	
	@Override
	public void updateGoodsSU(StoreGoodsSUVO updateGoodsSU) {
		
		dao.updateGoodsSU(updateGoodsSU);
	}
}
