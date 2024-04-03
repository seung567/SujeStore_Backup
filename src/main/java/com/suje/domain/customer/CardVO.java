package com.suje.domain.customer;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CardVO {
	
	// DB 불러오기용 변수
	private int card_code, card_cvc, card_pass;
	private String m_id, card_company, card_num;
	Date card_adate;
	/*
	 * // Java 사용 변수 private String cardNum,cardAdateResult;
	 */
}
