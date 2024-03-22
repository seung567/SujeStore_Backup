package com.suje.service.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.dao.main.MainLoginDao;
import com.suje.domain.main.MainLoginVO;

@Service("MainLoginService")
public class MainLoginServiceImpl implements MainLoginService {

	@Autowired
	private MainLoginDao mainLoginDao;
	
	@Override
	public MainLoginVO getMemberLogin(MainLoginVO vo) {
		System.out.println("��� �α��� ���� �۵� >> "+vo.getM_id()+" / "+vo.getM_pass());
		return mainLoginDao.getMemberLogin(vo);
	}
	@Override
	public MainLoginVO getStoreLogin(MainLoginVO vo) {
		System.out.println("����� �α��� ���� �۵� >> "+vo.getS_id()+" / "+vo.getS_pass());
		return mainLoginDao.getStoreLogin(vo);
	}
	@Override
	public MainLoginVO getAdminLogin(MainLoginVO vo) {
		System.out.println("���� �α��� ���� �۵� >> "+vo.getMa_id()+" / "+vo.getMa_pass());
		return mainLoginDao.getAdminLogin(vo);
	}
	
	@Override
	public void getMemberSignup(MainLoginVO vo) {
		System.out.println("��� ȸ������ ���� �۵� >> "+vo.getM_id());
		mainLoginDao.getMemberSignup(vo);
	}
	
}
