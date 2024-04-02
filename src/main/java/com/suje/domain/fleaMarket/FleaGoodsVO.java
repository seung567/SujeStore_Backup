package com.suje.domain.fleaMarket;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class FleaGoodsVO {
    
	//flea
	String f_code;
	int f_sum, f_num, cates_code;
     String f_date, f_redate, f_pname, f_spname, f_ppath, f_psize, f_content, f_ck, s_id;
     String catem_name, cates_name, catemm_name;

     
     //flea_sub
     String fs_code;
     String fs_psize, fs_pname, fs_spname, fs_ppath;  
     MultipartFile fleaupMainimg;  //메인 이미지 (1개)
     List<MultipartFile> fleaupSubimg;  //서브 이미지 (다수)
     
     
}

