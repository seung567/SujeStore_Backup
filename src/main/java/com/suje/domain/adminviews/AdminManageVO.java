package com.suje.domain.adminviews;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AdminManageVO {

	// store_avail
	public String sa_code, sa_content, sa_date, ma_id, sa_ck;

	// store
	public String s_id, s_pass, catem_name, s_name, s_text, s_bnum, s_email, s_tel, s_addr,
				  s_acc, s_bank, 
				  s_pname, s_spname, s_ppath, s_psize, 
				  s_back_pname, s_back_spname, s_back_ppath, s_back_psize;
	
	//Page
	public int firstNum, endNum, rnum;

}
