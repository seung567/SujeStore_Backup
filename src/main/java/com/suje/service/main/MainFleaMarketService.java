package com.suje.service.main;

import java.util.List;

import com.suje.domain.main.MainFleaMarketVO;

public interface MainFleaMarketService {
	public int getTotalAllCountPage();
	public int getLimitTotalCountPage(MainFleaMarketVO vo);
	public List<MainFleaMarketVO> getFleaAllList(MainFleaMarketVO vo);
}
