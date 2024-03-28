package com.suje.service.main;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.dao.main.MainCommDao;
import com.suje.domain.main.MainCommVO;

@Service("MainCommService")
public class MainCommServiceImpl implements MainCommService {

	private static final Logger logger = LoggerFactory.getLogger(MainCommServiceImpl.class);

	@Autowired
	private MainCommDao mainCommDao;
	
	@Override
	public int getTotalAllCountPage() {
		logger.info("커뮤니티 전체 행수 서비스");
		return mainCommDao.getTotalAllCountPage();
	}
	
	@Override
	public List<MainCommVO> getCommList(MainCommVO vo) {
		logger.info("커뮤니티 전체 게시글 서비스");
		return mainCommDao.getCommList(vo);
	}
}
