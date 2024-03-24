package com.suje.service.storeAdmin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.dao.storeAdmin.StoreNoticeDAO;
import com.suje.domain.storeAdmin.StoreNotiInfoVO;


@Service
public class StoreNoticeServiceImple implements StoreNoticeService {

	@Autowired
	StoreNoticeDAO dao;


	
	@Override
	public List<StoreNotiInfoVO> selectStoreNotice(StoreNotiInfoVO vo) {
		
		System.out.println("=> 스토어 공지조회 Service");
	  return dao.selectStoreNotice(vo);
	}

}