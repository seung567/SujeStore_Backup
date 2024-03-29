package com.suje.dao.main;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.main.MainRealTimeReviewVO;

@Repository("MainRealTimeReviewDao")
public class MainRealTimeReviewDaoImpl implements  MainRealTimeReviewDao{

	private static final Logger logger = LoggerFactory.getLogger(MainRealTimeReviewDaoImpl.class);
	
	
	
	@Autowired
    private SqlSession sqlSession; 
	
	@Override
    public List<MainRealTimeReviewVO> getreviewList(MainRealTimeReviewVO vo) {
        logger.info("실시간후기 목록 가져오기 - sqlSession");
        return sqlSession.selectList("getreviewList", vo);
    }
    
    @Override
    public int getTotalCountPage() {
        logger.info("실시간후기 전체 행 수 추출(페이징) - sqlSession");
        return sqlSession.selectOne("getTotalCountPage");
    }
	
	
	
}
