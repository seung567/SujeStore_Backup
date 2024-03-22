package com.suje.dao.main;

import com.suje.domain.main.MainLoginVO;

public interface MainLoginDao {
	public MainLoginVO getMemberLogin(MainLoginVO vo);
	public MainLoginVO getStoreLogin(MainLoginVO vo);
	public MainLoginVO getAdminLogin(MainLoginVO vo);
	public void getMemberSignup(MainLoginVO vo);
	
}
