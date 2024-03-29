package com.suje.service.main;

import java.util.List;

import com.suje.domain.main.MainRealTimeReviewVO;

public interface MainRealTimeReviewService {
	
	
	List<MainRealTimeReviewVO> getreviewList(MainRealTimeReviewVO vo);
    int getTotalCountPage();
    
}
