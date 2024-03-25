package com.suje.dao.customer;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.customer.MemberVO;
import com.suje.service.customer.CustomerInfoService;

@Repository
public class CustomerInfoDAOImpl implements CustomerInfoDAO {

	@Autowired
	SqlSessionTemplate mybatis;
	
	@Override
	public MemberVO getCustomerInfo(String id) {
		// TODO Auto-generated method stub
		System.out.println("CustomerInfoDAOImpl => getCustomerInfo 실행");
		return mybatis.selectOne("CustomerDAO.getCustomerInfo",id);
		
	}
	
	@Override
	public int updateMypageInfo(MemberVO vo) {
		
		System.out.println("CustomerInfoDAOImpl => updateMypageInfo 실행");
		return mybatis.update("CustomerDAO.updateMypageInfo", vo);
	}
	
	
}
