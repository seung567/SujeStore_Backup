package com.suje.service.storeAdmin;

import java.util.List;

import com.suje.domain.storeAdmin.StoreGoodsSUVO;

public interface StoreGoodsSUService {

    public List<StoreGoodsSUVO> storeGoodsMainPage(String id);
	void updateGoodsSU(StoreGoodsSUVO updateGoodsSU);
}
