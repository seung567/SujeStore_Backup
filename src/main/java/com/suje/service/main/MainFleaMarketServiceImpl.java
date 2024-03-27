package com.suje.service.main;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.dao.main.MainFleaMarketDao;
import com.suje.domain.main.MainFleaMarketVO;

@Service("MainFleaMarketService")
public class MainFleaMarketServiceImpl implements MainFleaMarketService {

	private static final Logger logger = LoggerFactory.getLogger(MainFleaMarketServiceImpl.class);

	@Autowired
	private MainFleaMarketDao mainFleaMarketDao;
	
	@Override
	public int getTotalAllCountPage() {
		// TODO Auto-generated method stub
		logger.info("플리마켓 전체 행수 서비스");
		return mainFleaMarketDao.getTotalAllCountPage();
	}
	
	@Override
	public int getLimitTotalCountPage(MainFleaMarketVO vo) {
		// TODO Auto-generated method stub
		logger.info("플리마켓 조건 포함 행수 서비스");
		return mainFleaMarketDao.getLimitTotalCountPage(vo);
	}
	
	@Override
	public List<MainFleaMarketVO> getFleaAllList(MainFleaMarketVO vo) {
		logger.info("플리마켓 전체 상품 서비스");
		return mainFleaMarketDao.getFleaAllList(vo);
	}
}
