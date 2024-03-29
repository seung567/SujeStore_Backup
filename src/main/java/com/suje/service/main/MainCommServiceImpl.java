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
	public int getLimitTotalCountPage(MainCommVO vo) {
		logger.info("커뮤니티 조건 포함 행수 서비스");
		return mainCommDao.getLimitTotalCountPage(vo);
	}
	
	@Override
	public List<MainCommVO> getCommList(MainCommVO vo) {
		logger.info("커뮤니티 전체 게시글 서비스");
		return mainCommDao.getCommList(vo);
	}
	
	@Override
	public void updateContentView(MainCommVO vo) {
		logger.info("커뮤니티 조회수 업데이트 서비스"+vo.comup_code);
		mainCommDao.updateContentView(vo);
	}
	
	@Override
	public MainCommVO getCommContent(MainCommVO vo) {
		logger.info("커뮤니티 상세 게시글 내용 서비스");
		return mainCommDao.getCommContent(vo);
	}
	
	@Override
	public void updateLike(MainCommVO vo) {
		logger.info("좋아요 서비스 "+vo.getComup_code());
		mainCommDao.updateLike(vo);
	}
	
	@Override
	public String likeReView(MainCommVO vo) {
		logger.info("좋아요수 불러오기 서비스 "+vo.getComup_code());
		return mainCommDao.likeReView(vo);
	}
	
	@Override
	public void replyWrite(MainCommVO vo) {
		logger.info("댓글 작성 서비스");
		mainCommDao.replyWrite(vo);
	}
	
	@Override
	public List<MainCommVO> getReplyList(MainCommVO vo) {
		logger.info("커뮤니티 댓글 리스트 호출 서비스");
		return mainCommDao.getReplyList(vo);
	}
	
	@Override
	public void replyDelete(MainCommVO vo) {
		logger.info("댓글 삭제 서비스");
		mainCommDao.replyDelete(vo);
	}
	
	@Override
	public void postDelete(MainCommVO vo) {
		logger.info("포스트 삭제 서비스");
		mainCommDao.postDelete(vo);
	}
}
