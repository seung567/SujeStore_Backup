package com.suje.dao.storeAdmin;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.storeAdmin.StoreNotiInfoVO;


@Repository
public class StoreNotiInfoDAOImple implements StoreNotiInfoDAO {

	@Autowired
	SqlSessionTemplate mybatis;

	public void insertStoreNotiInfo(StoreNotiInfoVO vo) {
		System.out.println("=> 스토어 공지등록 Repository");
		int result = mybatis.insert("StoreNotiInfoDAO.insertStoreNotiInfo", vo);

		System.out.println("insertStoreNotiInfo vo :"+ vo);
		System.out.println("insertStoreNotiInfo result :"+ result);

	}

}