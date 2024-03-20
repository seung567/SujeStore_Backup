package com.suje.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.HomeVO;

@Repository("HomeDAO")
public class HomaDAOImpl implements HomeDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<HomeVO> getSerchTest() {
		// TODO Auto-generated method stub
		System.out.println("=> Mybatis test() 호출");
		return mybatis.selectList("HomeDAO.getSerchTest");
	}
	
	@Override
	public HomeVO getModalTest(HomeVO vo) {
		// TODO Auto-generated method stub
		
		System.out.println("=> Mybatis getModalTest() 호출");
		return mybatis.selectOne("HomeDAO.getModalTest");
		
	}
}
