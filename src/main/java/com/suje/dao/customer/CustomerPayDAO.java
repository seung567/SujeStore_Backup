package com.suje.dao.customer;

import java.util.List;
import java.util.Map;

import com.suje.domain.customer.PayVO;

public interface CustomerPayDAO {
	
	public Map<String,Integer> getCountPageTotal(String id); // 페이지 전체 행수 반환
	
	public Map<String,Object> getPayList(Map<String,Object> resultMap);
	
	public void insertFleaPayCancel(PayVO vo);
	
	public void insertOrderPayReturn(PayVO vo);
	
	public void insertOrderPayCancel(PayVO vo);  // 결제 취소 등록
	
	public int insertPurchConfirm(String id, int payNo); // 구매 확정 입력
}
