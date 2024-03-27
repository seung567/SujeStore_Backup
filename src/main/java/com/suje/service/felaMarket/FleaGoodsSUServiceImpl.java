package com.suje.service.felaMarket;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.dao.fleaMarket.FleaGoodsSUDAO;
import com.suje.domain.fleaMarket.FleaGoodsVO;

@Service
public class FleaGoodsSUServiceImpl implements FleaGoodsSUService{

	@Autowired
	FleaGoodsSUDAO dao;
	
	@Override
	// 1.메소드 이름 맞추기
	public  List<FleaGoodsVO> fleaGoodsMainPage(String id) { 
		
		 List<FleaGoodsVO> goodsList = dao.fleaGoodsMainPage(id); // 단일 객체 대신 리스트로 받기
	        
	        return goodsList;
	}
	
	@Override
	public void modifyGoodsSU(FleaGoodsVO modifyGoodsSU) {
		
		dao.modifyGoodsSU(modifyGoodsSU);
	}
}
