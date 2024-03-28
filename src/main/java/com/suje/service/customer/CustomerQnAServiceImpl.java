package com.suje.service.customer;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.dao.customer.CustomerQnADAO;
import com.suje.domain.customer.QnAVO;

@Service
public class CustomerQnAServiceImpl implements CustomerQnAService {
	
	private static final Logger logger = LoggerFactory.getLogger(CustomerOrderServiceImpl.class);

	@Autowired
	CustomerQnADAO dao;
	
	@Override
	public List<QnAVO> getCustomerQnA(String id) {
		System.out.println("=> CustomerQnAService 실행");
		List<QnAVO> vo = dao.getCustomerQnA(id);
		return vo;
	}
	
	@Override
	public void insertQnA(QnAVO vo) {
		System.out.println("=> Q&A작성 Service 실행");
		dao.insertQnA(vo);
	}
	
	@Override
	public QnAVO getCustomerQnAA(int qna_code) {
		System.out.println("=> CustomerQnAAService 실행");
		QnAVO vo = dao.getCustomerQnAA(qna_code);
		return vo;
	}
	
	@Override
	public int getCountPageTotal(String id) {
		logger.info("=> getCountPageTotal Service 실행");
		int countPage = dao.getCountPageTotal(id);
		return countPage;
	}
	
}
