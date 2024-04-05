package com.suje.dao.fleaMarket;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.fleaMarket.FleaGoodsVO;

@Repository
public class FleaGoodsInfoDAOImpl implements FleaGoodsInfoDAO{

	@Autowired
	SqlSessionTemplate mybatis;
	
	@Override
	public void insertFleaGoodsInfo(FleaGoodsVO vo) {
		System.out.println("=> 스토어 공지등록 Repository");
		
		mybatis.insert("FleaGoodsInfoDAO.insertStoreGoodsInfo", vo);

		System.out.println("insertFleaGoodsInfo vo :"+ vo);

	}
}
