package com.suje.domain.customer;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class QnAVO {
	long qna_code;
	String m_id, qna_title, qna_content, qna_reply, qna_qdate, qna_adate;
}
