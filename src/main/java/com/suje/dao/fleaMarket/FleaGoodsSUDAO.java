package com.suje.dao.fleaMarket;

import java.util.List;

import com.suje.domain.fleaMarket.FleaGoodsVO;

public interface FleaGoodsSUDAO {

	public List<FleaGoodsVO> fleaGoodsMainPage(String id);
	void modifyGoodsSU(FleaGoodsVO modifyGoodsSU);
}
