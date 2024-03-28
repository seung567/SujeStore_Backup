package com.suje.controller.storeOrder;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.suje.domain.customer.EtcVO;
import com.suje.domain.customer.FinalOrderVO;
import com.suje.domain.customer.OrderListVO;
import com.suje.domain.storeOrder.StoreOrderListVO;
import com.suje.service.storeOrder.StoreOrderListService;


@Controller
public class StoreOrderListController {
	
	private static final Logger logger = LoggerFactory.getLogger(StoreOrderListController.class);
	
	@Autowired
	private StoreOrderListService storeService;
	private final int  pageCountNum = 5; // 각 페이지별 출력되는 목록의 수
	
	// Store SUJE 톡톡 페이지 연결(초기 페이징)
	@RequestMapping(value = "storeSujeTalk")
	public String getStoreOrderList(
			@RequestParam("id") String storeID,
			@RequestParam("page") int page,
			Model model,
			StoreOrderListVO vo) {
		
		logger.info("getStoreOrderList");
		
		// 전체 페이지 수 계산
		int totalCountPage = storeService.getStoreOrderListCount(storeID);		
		
		if((totalCountPage/pageCountNum) < 0) {
			totalCountPage = 1;
		}else {
			totalCountPage = totalCountPage/pageCountNum;
		}
		
		// 부분 페이지 수 계산
		int firstNum = (page-1) * pageCountNum + 1 ;
		int endNum = page * pageCountNum;
		
		vo.setS_id(storeID);
		vo.setFirstNum(firstNum);
		vo.setEndNum(endNum);
		
		List<StoreOrderListVO> storeOrderList = storeService.getStoreOrderList(vo);
		
		model.addAttribute("totalCountPage",totalCountPage);
		model.addAttribute("storeOrderList",storeOrderList);
		model.addAttribute("id",storeID);
		
		return "/storeOrder/storeSujeTalk";
	}
	
	
	//SUJE 톡톡 기타 요청 내역 - 비동기
	@RequestMapping(value = "storeSujeTalkEtc", method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> getStoreOrderEtc(@RequestParam Map<String,String> storeOrderNO) {
		
		logger.info("정상작동확인 = getStoreOrderEtc = {}",storeOrderNO.get("storeOrderNO") );
		
		//Map 형식으로 JSP에 값 전달을 위해 Map 객체화
		Map<String,Object> resultMap = new HashMap<String, Object>();
		
		// 주문 상세(기타) 요청 사항 리스트
		List<EtcVO> storeOrderDetailList = storeService.getStoreOrderEtc(Integer.parseInt(storeOrderNO.get("storeOrderNO")));
		
		//주문 상세(기타)요청 사항이 없을 경우 최초 접수된 요청 내용을 출력 하기 위한 명령어
		for(EtcVO vo : storeOrderDetailList) {
			if(vo.getEtc_content() == null) {
				vo.setContent(vo.getO_content());
			}else {
				vo.setContent(vo.getEtc_content());
			}
		}
		
		// 최종 주문서 불러오기
		FinalOrderVO finalVO = storeService.getFinalOrder(Integer.parseInt(storeOrderNO.get("storeOrderNO")));
		
		resultMap.put("etcList", storeOrderDetailList);
		resultMap.put("finalOrder", finalVO);
		
		return resultMap;
		
	}

	
}
