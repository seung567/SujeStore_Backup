package com.suje.service.main;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.dao.main.MainRealTimeReviewDao;
import com.suje.dao.main.MainRealTimeReviewDaoImpl;
import com.suje.domain.main.MainRealTimeReviewVO;

@Service("MainRealTimeReviewService")
public class MainRealTimeReviewServiceImpl implements MainRealTimeReviewService {
    
	private static final Logger logger = LoggerFactory.getLogger(MainRealTimeReviewDaoImpl.class);	
	
	
	@Autowired
    private MainRealTimeReviewDao mainrealtimereviewdao;
    
    @Override
    public List<MainRealTimeReviewVO> getreviewList(MainRealTimeReviewVO vo) {
    	logger.info("실시간 후기 view 실행 서비스임플");
    	return mainrealtimereviewdao.getreviewList(vo);
    }
    
    @Override
    public int getTotalCountPage() {
    	logger.info("실시간 후기 페이징 실행 서비스임플");
    	return mainrealtimereviewdao.getTotalCountPage();
    }
    
}
