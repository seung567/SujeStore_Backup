package com.suje.service.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.dao.customer.CustomerInfoDAO;
import com.suje.domain.customer.MemberVO;

@Service
public class CustomerInfoServiceImpl implements CustomerInfoService {
	
	@Autowired
	CustomerInfoDAO dao;
	
	@Override
	public MemberVO getCustomerInfo(String id) {
		// TODO Auto-generated method stub
		System.out.println("서비스 실행");
		MemberVO vo = dao.getCustomerInfo(id);
		return vo;
		
	}
	
	
}
