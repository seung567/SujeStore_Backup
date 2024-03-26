package com.suje.dao.adminviews;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.adminviews.AdminManageVO;
import com.suje.domain.adminviews.AdminQnAVO;
import com.suje.service.adminviews.AdminManageServiceImple;

@Repository("AdminQnADao")
public class AdminQnADaoImpl implements AdminQnADao{
	
	private static final Logger logger = LoggerFactory.getLogger(AdminQnADaoImpl.class);
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public List<AdminQnAVO> getQnAList(AdminQnAVO vo){
		logger.info("QnA 마이바티스");
		return (List<AdminQnAVO>)(Object) mybatis.selectList("AdminQnADao.getQnAList", vo);
	}
	
	@Override
	public int getTotalCountPage() {
		logger.info("QnA 전체 행 수 추출 마이바티스");
		return mybatis.selectOne("AdminQnADao.getTotalCountPage");
	}
}











