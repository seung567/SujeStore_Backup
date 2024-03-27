package com.suje.dao.storeAdmin;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.storeAdmin.StoreGoodsSUVO;

@Repository
public class StoreGoodsInfoDAOImpl implements StoreGoodsInfoDAO{

	@Autowired
	SqlSessionTemplate mybatis;
	
	@Override
	public void insertStoreGoodsInfo(StoreGoodsSUVO vo) {
		System.out.println("=> 스토어 공지등록 Repository");
		
		mybatis.insert("StoreGoodsInfoDAO.insertStoreGoodsInfo", vo);

		System.out.println("insertStoreGoodsInfo vo :"+ vo);

	}
}
