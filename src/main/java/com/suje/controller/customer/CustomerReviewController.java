package com.suje.controller.customer;

import java.util.HashMap;
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

import com.suje.domain.customer.ReviewVO;
import com.suje.service.customer.CustomerReviewService;

@Controller
public class CustomerReviewController {

	private static final Logger logger = LoggerFactory.getLogger(CustomerReviewController.class);

	@Autowired
	private CustomerReviewService service;
	private final int  pageCountNum = 5; // 각 페이지별 출력되는 목록의 수
	
	// 리뷰작성을 위한 페이지 연결(초기 페이징)
	@RequestMapping(value = "getCustomerReview")
	public String getCustomerReview(
			@RequestParam("id") String id, 
			@RequestParam("reviewPage") int reviewPage, 
			Model model,
			ReviewVO vo) {	
		logger.info("getCustomerReview");

		
		// 전체 페이지 수 계산	
		int reviewPageCount = service.getCountPageTotal(id);		
		reviewPageCount = totalCountPage(reviewPageCount);
		
		// 부분 페이지 수 계산
		int reviewFirstNum = (reviewPage-1) * pageCountNum + 1 ;
		int reviewEndNum = reviewPage * pageCountNum;
		
		// 맵 형식으로 Service , Repository, Mapper 값 전달
		Map<String,Object> resultMap = new HashMap<String, Object>();
		
		resultMap.put("id", id);
		resultMap.put("reviewFirstNum", reviewFirstNum);
		resultMap.put("reviewEndNum", reviewEndNum);
		
		// 맵형식으로 JSP 페이지 값 전달 처리
		
		Map<String,Object> customerReview = service.getCustomerReview(resultMap);
		
		model.addAttribute("mapValue", customerReview);
		model.addAttribute("id",id);
		
		return "/customer/customerReview";
	}
		
		// 전체 페이지의 수를 반환하는 메소드
		public int totalCountPage(int totalCountPage) {
			if((totalCountPage/pageCountNum)<0) {
				totalCountPage = 1;
			}else {
				totalCountPage = totalCountPage/pageCountNum;
			}
			return totalCountPage;
		}	

	// 리뷰 작성하기 (insert = 신규 글 저장 처리 요청)
	@RequestMapping(value = "insertReview", method = RequestMethod.POST)
	public String insertReview(@ModelAttribute("vo") ReviewVO vo, Model model) {
		System.out.println(vo.getRv_star());
		System.out.println(vo.getRv_content());

		service.insertReview(vo);
		model.addAttribute("vo", vo);

		System.out.println("insertReview 컨트롤러 실행");

		return "redirect:/customerReview.do?id=" + vo.getM_id();
	}

	//

}
