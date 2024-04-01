package com.suje.dao.main;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.main.MainStoreCategoryVO;

@Repository("MainStoreCategoryDao")
public class MainStoreCategoryDaoImpl implements MainStoreCategoryDao {

	private static final Logger logger = LoggerFactory.getLogger(MainStoreCategoryDaoImpl.class);
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public int getTotalAllCountPage() {
		logger.info("스토어 전체 행수 마이바티스");
		return mybatis.selectOne("MainStoreCategoryDao.getTotalAllCountPage");
	}
	
	@Override
	public int getLimitTotalCountPage(MainStoreCategoryVO vo) {
		logger.info("스토어 2차 조건 포함 행수 마이바티스");
		return mybatis.selectOne("MainStoreCategoryDao.getLimitTotalCountPage", vo);
	}
	
	@Override
	public List<MainStoreCategoryVO> getStoreAllList(MainStoreCategoryVO vo) {
		logger.info("스토어 전체 상품 마이바티스");
		return mybatis.selectList("MainStoreCategoryDao.getStoreAllList", vo);
	}
}
