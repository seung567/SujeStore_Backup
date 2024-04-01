package com.suje.controller.main;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.suje.domain.main.MainStoreCategoryVO;
import com.suje.service.main.MainStoreCategoryService;

@Controller
public class MainStoreCategoryController {

	private static final Logger logger = LoggerFactory.getLogger(MainStoreCategoryController.class);
	
	@Autowired
	private MainStoreCategoryService mainStoreCategoryService;
	
	int totalRowCount; // 전체 레코드 수
	int pageTotalCount; // 전체 페이지 수
	int countPerPage = 5; // 한페이지당 레코드 수
	int firstNum, endNum;
	
	//스토어 카테고리 검색 페이지 이동
	@RequestMapping(value = "viewStoreCategory")
	public String viewStoreCategory(@RequestParam("page") int page, @RequestParam("mCate") String mCate, @RequestParam("mmCate") String mmCate, @RequestParam("orderBy") String orderBy, Model model) {
		logger.info("스토어 카테고리 이동 컨트롤러");
		MainStoreCategoryVO vo = new MainStoreCategoryVO();
		
		if( mCate.equals("전체") ) {
			logger.info("스토어 전체 행수 컨트롤러");
			// 전체 테이블 행 수
			totalRowCount = mainStoreCategoryService.getTotalAllCountPage();
		} else {
			logger.info("스토어 2차 조건 포함 행수 컨트롤러>>"+mCate+"/"+mmCate);
			if(mmCate.equals(" ")) {
				logger.info("메인에서 진입");
				vo.setCatem_name(mCate);
			} else {
				vo.setCatem_name(mCate);
				vo.setCatemm_name(mmCate);
				logger.info("카테고리에서 진입"+vo.catem_name+vo.catemm_name);
			}
			// 조건 포함 전체 테이블 행 수
			totalRowCount = mainStoreCategoryService.getLimitTotalCountPage(vo);
		} 
		
		//전체 페이지 수
		pageTotalCount = totalRowCount / countPerPage;
		if(totalRowCount == 0) pageTotalCount = 0;
		if(totalRowCount%countPerPage > 0) pageTotalCount++;
		
		// 부분 페이지 수 계산
		firstNum = (page - 1) * countPerPage + 1;
		endNum = page * countPerPage;
		
		vo.setFirstNum(firstNum);
		vo.setEndNum(endNum);
		vo.setOrderBy(orderBy);
		
		model.addAttribute("mCate", mCate);
		model.addAttribute("mmCate", mmCate);
		model.addAttribute("orderBy", orderBy);
		model.addAttribute("pageTotalCount", pageTotalCount);
		
		logger.info("스토어 전체 상품 컨트롤러 "+mCate+"/"+mmCate+"/"+vo.getFirstNum()+"/"+vo.getEndNum());
		model.addAttribute("storeCateList", mainStoreCategoryService.getStoreAllList(vo));
		return "main/store/mainStoreCategory";
	}
	
	//스토어 상세 정보 페이지 이동
	@RequestMapping(value = "viewStoreInfo")
	public String viewStoreInfo(@RequestParam("sId") String sId, @RequestParam("page") int page, Model model) {
		MainStoreCategoryVO vo = new MainStoreCategoryVO();
		
		logger.info("리뷰 전체 행수 컨트롤러");
		// 전체 테이블 행 수
		totalRowCount = mainStoreCategoryService.getReviewTotalCountPage(sId);
		
		//전체 페이지 수
		pageTotalCount = totalRowCount / countPerPage;
		if(totalRowCount == 0) pageTotalCount = 0;
		if(totalRowCount%countPerPage > 0) pageTotalCount++;
		
		// 부분 페이지 수 계산
		firstNum = (page - 1) * countPerPage + 1;
		endNum = page * countPerPage;
		
		vo.setS_id(sId);
		vo.setFirstNum(firstNum);
		vo.setEndNum(endNum);
		
		model.addAttribute("pageTotalCount", pageTotalCount);
		
		logger.info("스토어 전체 리뷰 컨트롤러 "+vo.getFirstNum()+"/"+vo.getEndNum());
		model.addAttribute("storeReviewList", mainStoreCategoryService.getStoreReviewList(vo));
		
		logger.info("스토어 상세 정보 페이지 컨트롤러");
		model.addAttribute("storeInfo", mainStoreCategoryService.getStoreInfo(sId));
		return "main/store/storeInfo";
	}
	
}
