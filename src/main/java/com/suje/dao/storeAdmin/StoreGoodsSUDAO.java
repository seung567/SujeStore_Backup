package com.suje.dao.storeAdmin;

import java.util.List;

import com.suje.domain.storeAdmin.StoreGoodsSUVO;

public interface StoreGoodsSUDAO {

	public List<StoreGoodsSUVO> storeGoodsMainPage(String id);
	/* void updateStoreGoodsInfo(StoreGoodsInfoVO updateStoreGoodsInfo); */
}
