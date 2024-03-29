package com.suje.controller.customer;

import java.util.List;

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
	
	// 리뷰 DB 리스트 불러오기
	@RequestMapping(value = "customerReview")
	public String getCustomerReview(
			@RequestParam("id") String id, 
			@RequestParam("page") int page, 
			Model model,
			ReviewVO vo) {
		
		logger.info("getCustomerReview");
//		List<ReviewVO> vo = service.getCustomerReview(id);
		
		// 전체 페이지 수 계산
		
		int totalCountRow = service.getTotalCountPage(id);		
		
		if((totalCountRow/pageCountNum) < 0 ) {
			totalCountRow  = 1;
		}else {
			totalCountRow = totalCountRow/pageCountNum;
		}
		
		// 부분 페이지 수 계산
		int firstNum = (page-1) * pageCountNum + 1 ;
		int endNum = page * pageCountNum;
		
		vo.setFirstNum(firstNum);
		vo.setEndNum(endNum);
		vo.setM_id(id);
		List<ReviewVO> listVO = service.getPageList(vo);
		// 페이지에 맞는 리스트 가져오기
		
		model.addAttribute("totalCountRow",totalCountRow);
		model.addAttribute("listVO",listVO);
		model.addAttribute("id",id);

		return "/customer/customerReview";
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
