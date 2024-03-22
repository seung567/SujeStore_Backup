package com.suje.domain.customer;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CardInfoVO {
	
	// DB 불러오기용 변수
	int card_code, card_cvc, card_pass;
	long card_num;
	String m_id, card_company, card_adate;
	
	// Java 사용 변수
	String cardNum,cardAdateResult;
}
