package com.suje.domain.customer;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class EtcVO {
	
	int etc_code, o_code, etc_type_code;
	String etc_spname, etc_ppath, etc_pname, etc_psize,etc_content, etc_date, o_content; 
	String s_id,m_id;
	
	// 요청사항 출력용
	String content, o_date;
	
	//컨트롤 이미지 정보 저장용
	MultipartFile etcImgName;
}