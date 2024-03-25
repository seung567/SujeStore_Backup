package com.suje.service.storeAdmin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.dao.storeAdmin.StoreProfileDAO;
import com.suje.domain.storeAdmin.StoreProfileVO;

@Service
public class StoreProfileServiceImpl implements StoreProfileService {

	@Autowired
	StoreProfileDAO dao;

	@Override
	public StoreProfileVO getStoreById(String id) {

		StoreProfileVO vo = dao.getStoreById(id);
		return vo;

	}

	@Override
	public void updateStoreProfile(StoreProfileVO updatedStoreProfile) {
		
		System.out.println("updateStoreProfile 서비스 호출");
		dao.updateStoreProfile(updatedStoreProfile);
	}

}
