package com.suje.controller.customer;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.suje.domain.customer.EtcVO;
import com.suje.domain.customer.FinalOrderVO;
import com.suje.domain.customer.OrderListVO;
import com.suje.domain.customer.PurchaseVO;
import com.suje.service.customer.CustomerOrderService;

@Controller
//@RequiredArgsConstructor
public class CustomerOrderController {
	
	private static final Logger logger = LoggerFactory.getLogger(CustomerOrderController.class);
	
	@Autowired
	private CustomerOrderService orderService;
	private final int  pageCountNum = 5; // 각 페이지별 출력되는 목록의 수
	
	// 고객 주문 내역 조회 페이지 연결
	@RequestMapping(value = "customerOrder")
	public String OrderList(Model model) {
		logger.info("OrderList");
		
		
		return "/customer/customerOrderList";
	}
	
	// 고객 SUJE 톡톡 페이지 연결(초기 페이징)
	@RequestMapping(value = "customerSujeTalk")
	public String sujeTalkTalk(
			@RequestParam("id") String id, 
			@RequestParam("page") int page,
			Model model,
			OrderListVO vo) {
		
		logger.info("sujeTalkTalk");
		logger.info(id);
		
		// 전체 페이지 수 계산
		int totalCountPage = orderService.getCountPageTotal(id);		
		
		if((totalCountPage/pageCountNum) < 0) {
			totalCountPage = 1;
		}else {
			totalCountPage = totalCountPage/pageCountNum;
		}
		
		// 부분 페이지 수 계산
		int firstNum = (page-1) * pageCountNum + 1 ;
		int endNum = page * pageCountNum;
		
		vo.setM_id(id);
		vo.setFirstNum(firstNum);
		vo.setEndNum(endNum);
		List<OrderListVO> orderList = orderService.getOrderList(vo);
		// 출력용 부분 페이지 출력
		
		model.addAttribute("totalCountPage",totalCountPage);
		model.addAttribute("orderListTotal",orderList);
		model.addAttribute("id",id);
		
		return "/customer/customerSujeTalk";
	}
	
	
	//주문요청사항 - 비동기
	@RequestMapping(value="orderDetailContext", method = RequestMethod.POST, produces={"application/json"})
	@ResponseBody
	public Map<String,Object> orderEtcContext(@RequestParam  Map<String,String> oCode) {
		
		logger.trace("orderEtcContext");
		
		Map<String,Object> resultMap= new HashMap<String,Object>();
		List<EtcVO> etcVO = orderService.getEtcList(Integer.parseInt(oCode.get("customerOrderNO")));
		
		for(EtcVO vo : etcVO) {
			if(vo.getEtc_content() == null) {
				vo.setContent(vo.getO_content());
			}else {
				vo.setContent(vo.getEtc_content());
			}
		}
		
		FinalOrderVO finalVO = orderService.getFinalOrder(Integer.parseInt(oCode.get("customerOrderNO")));
		
		resultMap.put("etcList", etcVO);
		resultMap.put("finalVO", finalVO);
		
		return resultMap;
		
	}
	
	// 최종 주문서 조회
	@RequestMapping(value="finalOrderInfo", method = RequestMethod.GET)
	@ResponseBody
	public FinalOrderVO getFinalOrderInfo(@RequestParam Map<String,String> foCode) {
		
		logger.info("getFinalOrderInfo");
		FinalOrderVO finalVO = orderService.getFinalOrderInfo(Integer.parseInt(foCode.get("foCode")));
		
		return finalVO;
	}
	
	// pay 정보 , 배송정보 insert
	@RequestMapping(value = "payDeliveryInsert", method = RequestMethod.POST)
	public String insertPurchaseInfo(@ModelAttribute PurchaseVO purchaseVO) {

		logger.info("insertBuyinfo");
		Map<String, Integer> state = orderService.insertPurchaseInfo(purchaseVO);

		return "redirect:customerSujeTalk.do?id=" + purchaseVO.getM_id() + "&page=1";
	}
}
