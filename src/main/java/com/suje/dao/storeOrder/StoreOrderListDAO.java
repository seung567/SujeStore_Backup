package com.suje.dao.storeOrder;

import java.util.List;

import com.suje.domain.customer.EtcVO;
import com.suje.domain.customer.FinalOrderVO;
import com.suje.domain.storeOrder.StoreOrderListVO;

public interface StoreOrderListDAO {
	
	public int getStoreOrderListCount(String storeID); // Store - Suje Talk 전체 행 개수 구하기
	public List<StoreOrderListVO> getStoreOrderList(StoreOrderListVO vo); // Suje 톡톡 주문 내역
	public List<EtcVO> getStoreOrderEtc(int storeOrderNO); // SUJE 톡톡 주문 상세 요청 사항
	public int insertFinalOrderInfo(FinalOrderVO vo); // 최종 주문서 insert
	public FinalOrderVO getStoreFinalOrder(int orderNO); // 최종 주문서 정보 불러오기
	
}
