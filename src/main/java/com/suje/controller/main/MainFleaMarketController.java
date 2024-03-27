package com.suje.controller.main;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.suje.domain.main.MainFleaMarketVO;
import com.suje.service.main.MainFleaMarketService;

@Controller
public class MainFleaMarketController {

	private static final Logger logger = LoggerFactory.getLogger(MainFleaMarketController.class);
	
	@Autowired
	private MainFleaMarketService mainFleaMarkeService;
	
	int totalRowCount; // 전체 레코드 수
	int pageTotalCount; // 전체 페이지 수
	int countPerPage = 12; // 한페이지당 레코드 수
	int firstNum, endNum;
	
	// 플리마켓 메인(전체)
	@RequestMapping(value = "fleaMarketMain")
	public String fleaMarketMain(@RequestParam("page") int page, @RequestParam("mCate") String mCate, @RequestParam("mmCate") String mmCate, @RequestParam("orderBy") String orderBy, Model model) {
		
		MainFleaMarketVO vo = new MainFleaMarketVO();
		
		if( mCate.equals("전체") ) {
			logger.info("플리마켓 전체 행수 컨트롤러");
			// 전체 테이블 행 수
			totalRowCount = mainFleaMarkeService.getTotalAllCountPage();
		} else {
			logger.info("플리마켓 조건 포함 행수 컨트롤러");
			vo.setCatem_name(mCate);
			vo.setCatemm_name(mmCate);
			
			// 조건 포함 전체 테이블 행 수
			totalRowCount = mainFleaMarkeService.getLimitTotalCountPage(vo);
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
		
		logger.info("플리마켓 전체 상품 컨트롤러 "+mCate+"/"+mmCate);
		model.addAttribute("fleaList", mainFleaMarkeService.getFleaAllList(vo));
		
		return "main/fleaMarket/mainFleaMarket";
	}
}
