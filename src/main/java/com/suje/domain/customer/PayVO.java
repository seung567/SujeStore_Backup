package com.suje.domain.customer;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class PayVO {
	int p_code, fo_code, pt_code, p_sum, o_code, cates_code, deli_code, fo_sum, fo_num;
	String p_date, p_ck, p_ck_date, fo_date, fo_size, fo_etc, m_id;
	
	// 페이징 관련 메소드
	private int totalPageCount, firstNum, endNum;

}