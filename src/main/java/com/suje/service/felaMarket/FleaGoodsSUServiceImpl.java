package com.suje.service.felaMarket;

import java.util.ArrayList;
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
	public List<FleaGoodsVO> fleaGoodsListAll(FleaGoodsVO vo){
		/* List<FleaGoodsVO> goodsList = dao.fleaGoodsListAll(vo); */ 
		return dao.fleaGoodsListAll(vo); 
	}
	
	public FleaGoodsVO getFleaInfo(FleaGoodsVO vo) {
		return dao.getFleaInfo(vo);
	}
	
	
	@Override
	public int modifyGoodsSU(FleaGoodsVO vo) {
		
		int result = dao.modifyGoodsSU(vo);
		
		return result;
	}
}
