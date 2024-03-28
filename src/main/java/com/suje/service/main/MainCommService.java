package com.suje.service.main;

import java.util.List;

import com.suje.domain.main.MainCommVO;

public interface MainCommService {
	public int getTotalAllCountPage();
	public List<MainCommVO> getCommList(MainCommVO vo);
}
