package com.suje.dao.storeAdmin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.storeAdmin.StoreGoodsSUVO;

@Repository
public class StoreGoodsSUDAOImpl implements StoreGoodsSUDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	@Override
	// 1.메소드 이름 맞추기
	public List<StoreGoodsSUVO> storeGoodsMainPage(String id) {
		
		return mybatis.selectList("StoreGoodsSUDAO.getStoreGoodsById", id);
	}
	
}
