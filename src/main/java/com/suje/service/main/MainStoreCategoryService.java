package com.suje.service.main;

import java.util.List;

import com.suje.domain.main.MainStoreCategoryVO;

public interface MainStoreCategoryService {
	public int getTotalAllCountPage();
	public int getLimitTotalCountPage(MainStoreCategoryVO vo);
	public List<MainStoreCategoryVO> getStoreAllList(MainStoreCategoryVO vo);
}
