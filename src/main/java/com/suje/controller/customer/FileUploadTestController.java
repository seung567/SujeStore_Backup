package com.suje.controller.customer;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.suje.domain.customer.FileUploadTestVO;
import com.suje.service.customer.FileUploadTestService;

@Controller
public class FileUploadTestController {
	
	private static final Logger logger = LoggerFactory.getLogger(CustomerAccountController.class);
	
	@Autowired
	FileUploadTestService service;
	
	
	@RequestMapping(value = "flieUpload")
	public String fileUpload(Model model) {
		
		FileUploadTestVO vo = service.getFileName(10);
		
		model.addAttribute("vo",vo);
		
		return "/customer/fileUploadTest";
	}
	
	@RequestMapping(value = "getFileValue", method = RequestMethod.POST)
	public String getFIle(@ModelAttribute FileUploadTestVO form) throws IOException, ServletException{
		
		logger.info(form.getTextTest1());
		logger.info(form.getTextTest2());
		logger.info(form.getTextTest3());
		
		// 파일정보 변수에 저장
		MultipartFile file = form.getFile();
		
		// 업로드 파일명 변수에 저장
		String imgRealName = file.getOriginalFilename();
		
		// DB 저장명 생성
		UUID uuid = UUID.randomUUID();
		String uploadImg = uuid.toString() + "_" + imgRealName;
		
		// 서버에 파일 저장
		String baseDir = "C:/workspaces/SujeWebProject/src/main/webapp/resources/DB/";
		file.transferTo(new File(baseDir + uploadImg));
		
		int state = service.uploadTest(uploadImg);
		logger.info("업데이트 상태 = {}",state);
		
		return "/customer/fileUploadTest";
	}
}
