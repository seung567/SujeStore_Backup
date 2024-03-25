package com.suje.service.storeAdmin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.dao.storeAdmin.StoreNoticeDAO;
import com.suje.domain.storeAdmin.StoreNoticeVO;


@Service
public class StoreNoticeServiceImple implements StoreNoticeService {

	@Autowired
	StoreNoticeDAO dao;


	
	@Override
	public List<StoreNoticeVO> storeNoticeListAll(StoreNoticeVO vo) {
		
		System.out.println("=> 스토어 공지조회 Service");
	  return dao.storeNoticeListAll(vo);
	}
	
	
	public StoreNoticeVO getNotiInfo(StoreNoticeVO vo){
		System.out.println("=> 스토어 공지내용조회 Service");
		return dao.getNotiInfo(vo);
	}
	
 
}