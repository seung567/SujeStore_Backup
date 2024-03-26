package com.suje.dao.adminviews;

import java.util.List;

import com.suje.domain.adminviews.AdminQnAVO;

public interface AdminQnADao {
	public List<AdminQnAVO> getQnAList(AdminQnAVO vo);
	public int getTotalCountPage();
	
}
