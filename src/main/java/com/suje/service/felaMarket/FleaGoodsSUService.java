package com.suje.service.felaMarket;

import java.util.List;

import com.suje.domain.fleaMarket.FleaGoodsVO;

public interface FleaGoodsSUService {

	List<FleaGoodsVO> fleaGoodsListAll(FleaGoodsVO vo);
	FleaGoodsVO getFleaInfo(FleaGoodsVO vo);
	void modifyGoodsSU(FleaGoodsVO modifyGoodsSU);
}
