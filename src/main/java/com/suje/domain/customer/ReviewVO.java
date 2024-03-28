package com.suje.domain.customer;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReviewVO {
	int rv_code, fo_code, pt_code, o_code, cates_code, deli_code;
	int rv_like, rv_star, p_sum, fo_sum, fo_num, p_code;
	String rv_content, rv_date, p_date, p_ck, p_ck_date, fo_date, fo_size, fo_etc, m_id;
}
