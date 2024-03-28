package com.suje.domain.storeOrder;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class StoreOrderListVO {

	private int o_code;
	private String o_content, m_id, o_date, s_id;
	
	// 페이징 관련 메소드
	private int totalPageCount,firstNum,endNum;
	
	//요청사항 내용 관련 메소드
	private String content;
}
