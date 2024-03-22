package com.suje.dao.adminviews;

import org.springframework.stereotype.Repository;

import com.suje.domain.adminviews.AdmininfoVO;

@Repository
public interface Admininfodao  {
	 AdmininfoVO getAdminInfo(String id);
	    void updateAdmin(AdmininfoVO adminVO);
	}

