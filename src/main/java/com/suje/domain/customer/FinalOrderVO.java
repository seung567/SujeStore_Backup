package com.suje.domain.customer;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class FinalOrderVO {
	
	int fo_code, fo_sum, fo_num, o_code, cates_code, deli_code;
	String fo_date, fo_size,  fo_etc;
	
	String catemm_name, cates_name;
}
