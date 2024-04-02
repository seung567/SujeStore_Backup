package com.suje.controller.fleaMarket;

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

import com.suje.domain.fleaMarket.FleaGoodsVO;
import com.suje.service.felaMarket.FleaGoodsSUService;


@Controller
public class fleaGoodsSUController {
	private static final Logger logger = LoggerFactory.getLogger(fleaGoodsSUController.class);

	@Autowired
	FleaGoodsSUService goodsService;
	
	// 플리마켓 상품 리스트 출력
	@RequestMapping(value = "fleaGoodsListAll")
	public String fleaGoodsListAll(@RequestParam("id") String id, FleaGoodsVO vo, Model model) {
		
		logger.info("/////////////////////////////  fleaGoodsListAll 실행");

		vo.setS_id(id);
		List<FleaGoodsVO> goodsList = goodsService.fleaGoodsListAll(vo);
		
		model.addAttribute("fleaGoodsListAll", goodsList);

		return "/fleaMarket/fleaGoodsSearchUpdate";
	}
	
	// 플리마켓 상품 상세정보 조회
	@RequestMapping(value = "getFleaInfo")
	@ResponseBody
	public Map<String,Object> getFleaInfo(@RequestParam Map<String,String> valueMap, FleaGoodsVO vo, Model model) 
	{
		
		logger.info("/////////////////////////////  getFleaInfo 실행");
		
		vo.setS_id(valueMap.get("id"));
		vo.setF_code(valueMap.get("fleaNum"));
		
		// 상품 리스트 불러오기
		List<FleaGoodsVO> list = goodsService.fleaGoodsListAll(vo);
		// 상품 상세 정보 불러오기
		FleaGoodsVO getListVO = goodsService.getFleaInfo(vo);
		Map<String,Object> resultMap = new HashMap<String, Object>();
		
		resultMap.put("fleaList", list);
		resultMap.put("getListVO", getListVO);

		return resultMap;
	}

	// 플리마켓 상품 정보 수정
	@RequestMapping(value = "modifyGoodsSU", method = RequestMethod.POST)
	@ResponseBody
	public String modifyGoodsSU(FleaGoodsVO vo, Model model) {
		
		logger.info("/////////////////////////////   modifyGoodsSU 실행");

		int result = goodsService.modifyGoodsSU(vo);
		model.addAttribute("result", result);

		// 상품 리스트 불러오기
		List<FleaGoodsVO> list = goodsService.fleaGoodsListAll(vo);
		Map<String, Object> resultMap = new HashMap<String, Object>();

		resultMap.put("fleaList", list);

		return "/fleaMarket/fleaGoodsSearchUpdate";
	}
	
	
	@RequestMapping(value= "deleteGoodsSU")
	public String deleteGoodsSU(FleaGoodsVO vo, Model model) {
		
		logger.info("/////////////////////////////   deleteGoodsSU 실행");
		System.out.println("delete VO      :    " + vo);
		
		
		int result = goodsService.deleteGoodsSU(vo);
		model.addAttribute("result", result);
		
		return "redirect:/fleaGoodsListAll.do?id=" + vo.getS_id();
	}
	

} 







