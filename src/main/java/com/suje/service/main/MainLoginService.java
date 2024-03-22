package com.suje.service.main;

import com.suje.domain.main.MainLoginVO;

public interface MainLoginService {
	public MainLoginVO getMemberLogin(MainLoginVO vo);
	public MainLoginVO getStoreLogin(MainLoginVO vo);
	public MainLoginVO getAdminLogin(MainLoginVO vo);
	public void getMemberSignup(MainLoginVO vo);
}
