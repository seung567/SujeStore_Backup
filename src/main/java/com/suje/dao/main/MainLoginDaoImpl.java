package com.suje.dao.main;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.main.MainLoginVO;

@Repository("MainLoginDao")
public class MainLoginDaoImpl implements MainLoginDao {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	public MainLoginVO getMemberLogin(MainLoginVO vo) {
		System.out.println("��� �α��� ���̹�Ƽ�� �۵� >> "+vo.getM_id()+" / "+vo.getM_pass());
		return mybatis.selectOne("MainLoginDao.getMemberLogin", vo);
	}
	@Override
	public MainLoginVO getStoreLogin(MainLoginVO vo) {
		System.out.println("����� �α��� ���̹�Ƽ�� �۵� >> "+vo.getS_id()+" / "+vo.getS_pass());
		return mybatis.selectOne("MainLoginDao.getStoreLogin", vo);
	}
	@Override
	public MainLoginVO getAdminLogin(MainLoginVO vo) {
		System.out.println("���� �α��� ���̹�Ƽ�� �۵� >> "+vo.getMa_id()+" / "+vo.getMa_pass());
		return mybatis.selectOne("MainLoginDao.getAdminLogin", vo);
	}
	
	@Override
	public void getMemberSignup(MainLoginVO vo) {
		System.out.println("��� ȸ������ ���̹�Ƽ�� �۵� >> "+vo.getM_id());
		mybatis.insert("MainLoginDao.getMemberSignup", vo);
	}
}
