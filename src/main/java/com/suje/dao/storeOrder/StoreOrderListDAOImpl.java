package com.suje.dao.storeOrder;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.customer.EtcVO;
import com.suje.domain.customer.FinalOrderVO;
import com.suje.domain.storeOrder.StoreOrderListVO;

@Repository
public class StoreOrderListDAOImpl implements StoreOrderListDAO {
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	// Store - Suje Talk 전체 행 개수 구하기
	@Override
	public int getStoreOrderListCount(String storeID) {
		return mybatis.selectOne("storeOrderListDao.getStoreOrderListCount",storeID);
	}
	
	// Store - Suje 톡톡 주문 내역
	@Override
	public List<StoreOrderListVO> getStoreOrderList(StoreOrderListVO vo) {
		return mybatis.selectList("storeOrderListDao.getStoreOrderList",vo);
	}
	
	// Store - Suje 톡톡 주문 상세 요청 사항
	@Override
	public List<EtcVO> getStoreOrderEtc(int storeOrderNO) {
		return mybatis.selectList("storeOrderListDao.getStoreOrderEtc",storeOrderNO);
	}
	
	//최종주문서 insert
	@Override
	public int insertFinalOrderInfo(FinalOrderVO vo) {
		// TODO Auto-generated method stub
		return mybatis.insert("storeOrderListDao.insertFinalOrderInfo",vo);
	}
	
	// 최종 주문서 정보 불러오기
	@Override
	public FinalOrderVO getStoreFinalOrder(int orderNO) {
		return mybatis.selectOne("storeOrderListDao.getStoreFinalOrder",orderNO);
	}
	
	//최종 주문서 정보 수정하기
	@Override
	public int updateFinalOrderinfo(FinalOrderVO vo) {
		return mybatis.update("storeOrderListDao.updateFinalOrderinfo",vo);
	}
}
