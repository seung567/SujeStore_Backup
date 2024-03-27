package com.suje.service.felaMarket;

import java.util.List;

import com.suje.domain.fleaMarket.FleaGoodsVO;

public interface FleaGoodsSUService {

    public List<FleaGoodsVO> fleaGoodsMainPage(String id);
	void modifyGoodsSU(FleaGoodsVO modifyGoodsSU);
}
