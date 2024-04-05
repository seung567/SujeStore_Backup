package com.suje.domain.customer;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CardInfoVO {
	
	// DB 불러오기용 변수
	private int card_code, card_cvc, card_pass;
	private long card_num;
	private String m_id, card_company, card_adate;
	
	// Java 사용 변수
	private String cardNum,cardAdateResult;
}
