package com.suje.service.customer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.dao.customer.CustomerQnADAO;
import com.suje.domain.customer.QnAVO;

@Service
public class CustomerQnAServiceImpl implements CustomerQnAService {

	@Autowired
	CustomerQnADAO dao;
	
	@Override
	public List<QnAVO> getCustomerQnA(String id) {
	
		System.out.println("=> CustomerQnAService 실행");
		List<QnAVO> vo = dao.getCustomerQnA(id);
		return vo;
	}

}
