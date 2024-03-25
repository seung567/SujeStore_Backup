package com.suje.dao.storeAdmin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.storeAdmin.StoreNotiInfoVO;


@Repository
public class StoreNoticeDAOImple implements StoreNoticeDAO {

	@Autowired
	SqlSessionTemplate mybatis;

	public List<StoreNotiInfoVO> selectStoreNotice(StoreNotiInfoVO vo) {

		System.out.println("=> 스토어 공지조회 Repository");
		System.out.println("List<StoreNotiInfoVO> :"+ vo);
		
		return mybatis.selectList("List<StoreNotiInfoVO>", vo);

		

	}

}