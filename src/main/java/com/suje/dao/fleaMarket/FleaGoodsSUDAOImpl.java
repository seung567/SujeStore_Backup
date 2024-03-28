package com.suje.dao.fleaMarket;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.fleaMarket.FleaGoodsVO;

@Repository
public class FleaGoodsSUDAOImpl implements FleaGoodsSUDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	@Override
	public List<FleaGoodsVO> fleaGoodsListAll(FleaGoodsVO vo) {
		
		return mybatis.selectList("FleaGoodsSUDAO.fleaGoodsListAll", vo);
	}

	@Override
	public FleaGoodsVO getFleaInfo(FleaGoodsVO vo) {
		return mybatis.selectOne("FleaGoodsSUDAO.getFleaInfo", vo);
	}
	
    
	@Override
    public void modifyGoodsSU(FleaGoodsVO modifyGoodsSU) {
        mybatis.update("FleaGoodsSUDAO.modifyGoodsSU", modifyGoodsSU);
    }

}
