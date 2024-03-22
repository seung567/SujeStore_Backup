package com.suje.service;

import com.suje.dao.storeAdmin.StoreProfileDAO;
import com.suje.domain.storeAdmin.StoreProfileVO;


public interface StoreProfileService {
	
    public StoreProfileVO getStoreById(String id);
    
}
