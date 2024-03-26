package com.suje.controller.main;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	//Index에서 메인 페이지 호출
	@RequestMapping(value = "indexMain")
	public String viewIndexMain() {
		logger.info("인덱스 메인 호출 컨트롤러");
		return "main";
	}
	
	//실시간 후기 더보기 버튼(추후 사용)
	@RequestMapping(value = "mainRealTimeReview.do")
	public String moreReviewPage() {
		logger.info("실시간 후기 페이지 호출 컨트롤러");
		return "main/mainRealTimeReview";
	}
	
	//스토어 더보기 버튼(추후 사용)
	@RequestMapping(value = "mainPopularRank.do")
	public String moreStore() {
		logger.info("스토어 랭킹 페이지 호출 컨트롤러");
		return "main/mainPopularRank";
	}
}
