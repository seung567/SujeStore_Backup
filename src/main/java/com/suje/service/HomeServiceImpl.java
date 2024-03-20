package com.suje.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.suje.dao.HomeDAO;
import com.suje.domain.HomeVO;

@Controller
public class HomeServiceImpl implements HomeService{
	
	@Autowired
	HomeDAO homeDao;
	
	@Override
	public List<HomeVO> getSerchTest() {
		// TODO Auto-generated method stub
		
		return homeDao.getSerchTest();
	}
	
	@Override
	public HomeVO getModalTest(HomeVO vo) {
		// TODO Auto-generated method stub
		
		return homeDao.getModalTest(vo);
	}
}
