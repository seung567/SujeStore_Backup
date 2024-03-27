package com.suje.domain.main;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MainFleaMarketVO {

	//flea
	public String f_code, s_id, catems_code, f_ck, f_sum, fnum, f_content, f_date, f_redate, f_pname, f_ppath, f_psize;
	
	//cate_sub
	public String cates_code, cates_name;
	//cate_mid
	public String catemm_code, catemm_name;
	//cate_main
	public String catem_code, catem_name;
	
	//Store
	public String s_name, s_text, s_bnum, s_email, s_tel, s_addr,
				  s_acc, s_bank, 
				  s_pname, s_spname, s_ppath, s_psize, 
				  s_back_pname, s_back_spname, s_back_ppath, s_back_psize;

	//Page
	public int firstNum, endNum, rnum;
	
	//Limit
	public String orderBy;
	
}
