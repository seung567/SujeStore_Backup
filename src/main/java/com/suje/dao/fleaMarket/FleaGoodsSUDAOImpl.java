package com.suje.dao.fleaMarket;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.fleaMarket.FleaGoodsVO;
import com.suje.domain.storeAdmin.StoreGoodsSUVO;
import com.suje.domain.storeAdmin.StoreProfileVO;

@Repository
public class FleaGoodsSUDAOImpl implements FleaGoodsSUDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	@Override
	// 1.메소드 이름 맞추기
	public List<FleaGoodsVO> fleaGoodsMainPage(String id) {
		
		return mybatis.selectList("FleaGoodsSUDAO.getFleaGoodsById", id);
	}
    @Override
    public void modifyGoodsSU(FleaGoodsVO modifyGoodsSU) {
        mybatis.update("FleaGoodsSUDAO.modifyGoodsSU", modifyGoodsSU);
    }

}
