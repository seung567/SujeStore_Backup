package com.suje.dao.main;

import java.util.List;

import com.suje.domain.main.MainFleaMarketVO;

public interface MainFleaMarketDao {
	public int getTotalAllCountPage();
	public int getLimitTotalCountPage(MainFleaMarketVO vo);
	public List<MainFleaMarketVO> getFleaAllList(MainFleaMarketVO vo);
}
