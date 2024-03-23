package com.suje.dao.storeAdmin;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.storeAdmin.StoreProfileVO;

@Repository
public class StoreProfileDAOImpl implements StoreProfileDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	@Override
	public StoreProfileVO getStoreById(String id) {
		
		return mybatis.selectOne("storeProfileDAO.getStoreById",id);
	}
    @Override
    public void updateStoreProfile(StoreProfileVO updatedStoreProfile) {
    	System.out.println("레포지토리" + updatedStoreProfile.getCatem_code());
        mybatis.update("storeProfileDAO.updateStoreProfile", updatedStoreProfile);
    }

}
