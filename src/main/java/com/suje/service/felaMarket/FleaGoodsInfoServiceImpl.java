package com.suje.service.felaMarket;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.dao.fleaMarket.FleaGoodsInfoDAO;
import com.suje.domain.fleaMarket.FleaGoodsVO;

@Service
public class FleaGoodsInfoServiceImpl implements FleaGoodsInfoService {

	@Autowired
	FleaGoodsInfoDAO dao;



	@Override
	public void insertFleaGoodsInfo(FleaGoodsVO vo) {
		System.out.println("=> 스토어 공지등록 Service");
		dao.insertFleaGoodsInfo(vo); 
	}
}
