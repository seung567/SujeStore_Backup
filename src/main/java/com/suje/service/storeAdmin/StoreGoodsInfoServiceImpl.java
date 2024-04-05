package com.suje.service.storeAdmin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.dao.storeAdmin.StoreGoodsInfoDAO;
import com.suje.domain.storeAdmin.StoreGoodsSUVO;

@Service
public class StoreGoodsInfoServiceImpl implements StoreGoodsInfoService {

	@Autowired
	StoreGoodsInfoDAO dao;



	@Override
	public void insertStoreGoodsInfo(StoreGoodsSUVO goodsVO) {
		System.out.println("=> 스토어 공지등록 Service");
		dao.insertStoreGoodsInfo(goodsVO); 
	}
}
