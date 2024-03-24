package com.suje.service.storeAdmin;

import java.util.List;

import com.suje.domain.storeAdmin.StoreNotiInfoVO;

public interface StoreNoticeService {
	
	
	public List<StoreNotiInfoVO> selectStoreNotice(StoreNotiInfoVO vo);
}
