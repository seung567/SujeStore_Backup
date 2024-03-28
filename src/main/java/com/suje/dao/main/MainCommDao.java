package com.suje.dao.main;

import java.util.List;

import com.suje.domain.main.MainCommVO;

public interface MainCommDao {
	public int getTotalAllCountPage();
	public List<MainCommVO> getCommList(MainCommVO vo);
}
