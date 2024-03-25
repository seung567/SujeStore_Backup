package com.suje.dao.storeAdmin;

import java.util.List;

import com.suje.domain.storeAdmin.StoreNotiInfoVO;

public interface StoreNoticeDAO {

	 public List<StoreNotiInfoVO> selectStoreNotice(StoreNotiInfoVO vo); 
}
