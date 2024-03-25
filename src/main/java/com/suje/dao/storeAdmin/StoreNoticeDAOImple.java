package com.suje.dao.storeAdmin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.storeAdmin.StoreNoticeVO;


@Repository
public class StoreNoticeDAOImple implements StoreNoticeDAO {

	@Autowired
	SqlSessionTemplate mybatis;

	@Override
	public List<StoreNoticeVO> storeNoticeListAll(StoreNoticeVO vo) {

		System.out.println("=> 스토어 공지조회 Repository");
		
		return mybatis.selectList("StoreNoticeDAO.storeNoticeListAll", vo);

	} 
	
	@Override
	public StoreNoticeVO getNotiInfo(StoreNoticeVO vo) {
		
		System.out.println("=> 스토어 공지내용조회 Repository");
		
		return mybatis.selectOne("StoreNoticeDAO.getNotiInfo", vo);
		
	}

}