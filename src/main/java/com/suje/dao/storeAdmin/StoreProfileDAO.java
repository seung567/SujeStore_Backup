package com.suje.dao.storeAdmin;

import org.apache.ibatis.annotations.Param;

import com.suje.domain.storeAdmin.StoreProfileVO;

public interface StoreProfileDAO {
	
	public StoreProfileVO getStoreById(String id);

}
