package com.suje.dao.customer;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.customer.PayVO;

@Repository
public class CustomerPayDAOImpl implements CustomerPayDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(CustomerPayDAOImpl.class);
	
	@Autowired
	SqlSessionTemplate mybatis;
	
	@Override
	public Map<String,Integer> getCountPageTotal(String memberID) {
		logger.info("getCountPageTotal // Repository");
		return mybatis.selectOne("CustomerOrderListDAO.getCountPageTotal", memberID);
	}
	
	@Override
	public Map<String,Object> getPayList(Map<String,Object> resultMap) {
		logger.info("getPayList // Repository");
//		return mybatis.selectList("CustomerOrderListDAO.getPayList", vo);
		
		Map<String,Object> finalResultMap = new HashMap<String, Object>();
		
		// 1. 주문제작 결재내역 
		List<PayVO> orderList = mybatis.selectList("CustomerOrderListDAO.getPayList", resultMap);
		// 2. 플리마켓 결재내역
		List<PayVO> fleaList = mybatis.selectList("CustomerOrderListDAO.getFleaPayList", resultMap);
		// 3. 결제취소 내역
		List<PayVO> cancleList = mybatis.selectList("CustomerOrderListDAO.getCancelPayList", resultMap);
		// 4. 반품 내역
		List<PayVO> returnList = mybatis.selectList("CustomerOrderListDAO.getReturnList", resultMap);
		
		// 5. 맵에 저장 하여 return
		finalResultMap.put("orderList",orderList);
		finalResultMap.put("fleaList",fleaList);
		finalResultMap.put("cancleList",cancleList);
		finalResultMap.put("returnList",returnList);
		
		return finalResultMap;
	}
	
	@Override
	public void insertFleaPayCancel(PayVO vo) {
		logger.info("flea 결제취소요청 Repository = {}",vo.getFp_code());
		mybatis.insert("CustomerOrderListDAO.insertFleaPayCancel", vo);
		logger.info("insertFleaPayCancel Repository 성공");
	}

	@Override
	public void insertOrderPayReturn(PayVO vo) {
		logger.info("order 반품요청 Repository = {}",vo.getP_code());
		mybatis.insert("CustomerOrderListDAO.insertOrderPayReturn", vo);
		logger.info("insertOrderPayReturn Repository 성공");
	}
	
	@Override
	public void insertOrderPayCancel(PayVO vo) {
		logger.info("order 결제취소요청 Repository = {}",vo.getP_code());
		mybatis.insert("CustomerOrderListDAO.insertOrderPayCancel", vo);
		logger.info("insertOrderPayCancel Repository 성공");
	}
	
	// 구매 확정 입력
	@Override
	public int insertPurchConfirm(String id, int payNo) {
		logger.info("insertPurchConfirm Repository = {}", id);
		logger.info("insertPurchConfirm Repository = {}", payNo);
		
		Map<String,Object> responseValue = new HashMap<String, Object>();
		
		responseValue.put("id", id);
		responseValue.put("payNo", payNo);
		
		return mybatis.update("CustomerOrderListDAO.insertPurchConfirm", responseValue);
	}
	
}
