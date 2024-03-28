package com.suje.dao.main;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.main.MainCommVO;

@Repository("MainCommDao")
public class MainCommDaoImpl implements MainCommDao {
	
	private static final Logger logger = LoggerFactory.getLogger(MainCommDaoImpl.class);
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public int getTotalAllCountPage() {
		logger.info("커뮤니티 전체 행수 마이바티스");
		return mybatis.selectOne("MainCommDao.getTotalAllCountPage");
	}
	
	@Override
	public List<MainCommVO> getCommList(MainCommVO vo) {
		logger.info("커뮤니티 전체 게시글 마이바티스");
		return mybatis.selectOne("MainCommDao.getCommList", vo);
	}
}
