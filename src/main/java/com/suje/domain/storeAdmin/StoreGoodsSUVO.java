package com.suje.domain.storeAdmin;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class StoreGoodsSUVO {
	int g_code, cates_code, catemm_code,catem_code; 
	String s_id, g_content; 
	String catem_name,cates_name, catemm_name,g_pname;
	String g_date, g_ppath;
}
