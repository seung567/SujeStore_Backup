package com.suje.dao.main;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.main.MainFleaMarketVO;

@Repository("MainFleaMarketDao")
public class MainFleaMarketDaoImpl implements MainFleaMarketDao {

	private static final Logger logger = LoggerFactory.getLogger(MainFleaMarketDaoImpl.class);
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public int getTotalAllCountPage() {
		logger.info("플리마켓 전체 행수 마이바티스");
		return mybatis.selectOne("MainFleaMarketDao.getTotalAllCountPage");
	}
	
	@Override
	public int getLimitTotalCountPage(MainFleaMarketVO vo) {
		logger.info("플리마켓 조건 포함 행수 마이바티스");
		return mybatis.selectOne("MainFleaMarketDao.getLimitTotalCountPage", vo);
	}
	
	@Override
	public List<MainFleaMarketVO> getFleaAllList(MainFleaMarketVO vo) {
		logger.info("플리마켓 전체 상품 마이바티스");
		return mybatis.selectList("MainFleaMarketDao.getFleaAllList", vo);
	}
}
