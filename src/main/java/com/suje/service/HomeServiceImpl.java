package com.suje.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import com.suje.dao.HomeDAO;
import com.suje.domain.HomeVO;

@Service("homeserviceTest")
public class HomeServiceImpl implements HomeService{
	
	@Autowired
	HomeDAO homeDao;
	
	@Override
	public List<HomeVO> getSerchTest() {
		// TODO Auto-generated method stub
		System.out.println("서비스 진입");
		return homeDao.getSerchTest();
	}
	
	@Override
	public HomeVO getModalTest(HomeVO vo) {
		// TODO Auto-generated method stub
		System.out.println("서비스 진입");

		return homeDao.getModalTest(vo);
	}
}
