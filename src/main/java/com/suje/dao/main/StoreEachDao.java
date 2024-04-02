package com.suje.dao.main;

import java.util.List;

import com.suje.domain.main.StoreEachVO;

public interface StoreEachDao {
	public StoreEachVO getStoreInfoDetail(String sId);
	public List<StoreEachVO> getStoreNotiList(String sId);
	public List<StoreEachVO> getStoreGoodsList(String sId);
	public StoreEachVO eachNoticeView(StoreEachVO vo);
	public StoreEachVO eachStoreGoods(StoreEachVO vo);
	public List<StoreEachVO> eachStoreGoodsImg(StoreEachVO vo);
	public void orderSend (StoreEachVO vo);
}
