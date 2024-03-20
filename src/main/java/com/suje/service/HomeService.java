package com.suje.service;

import java.util.List;

import com.suje.domain.HomeVO;

public interface HomeService {
	
	public List<HomeVO> getSerchTest();
	public HomeVO getModalTest(HomeVO vo);
	
}
