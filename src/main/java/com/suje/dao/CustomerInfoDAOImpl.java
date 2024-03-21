package com.suje.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.MemberVO;
import com.suje.service.CustomerInfoService;

@Repository
public class CustomerInfoDAOImpl implements CustomerInfoDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	@Override
	public MemberVO getCustomerInfo(String id) {
		// TODO Auto-generated method stub
		System.out.println("레포지토리 실행");
		return mybatis.selectOne("customerDAO.getCustomerInfo",id);
		
	}
	
	
}
