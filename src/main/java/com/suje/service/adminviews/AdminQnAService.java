package com.suje.service.adminviews;

import java.util.List;

import com.suje.domain.adminviews.AdminQnAVO;

public interface AdminQnAService {
	public List<AdminQnAVO> getQnAList(AdminQnAVO vo);
	public int getTotalCountPage();
	
	
}
