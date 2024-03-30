package com.suje.domain.main;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MainCommVO {

	//comu_post
	public String comup_code, m_id, comuc_code, comup_title, comup_content, comup_date, comup_redate, comup_count, comup_like;
	
	//replyCount
	public String reCnt;
	
	//comu_cate
	public String comuc_name;
	
	//comu_reply
	public String comur_code, comur_content, comur_date;
	
	//comu_post_photo
	public String cpp_code, cpp_pname, cpp_spname, cpp_ppath, cpp_psize;
	MultipartFile comup_img;
	
	//Page
	public int firstNum, endNum, rnum;
	
	/*
	@Getter(AccessLevel.NONE)
	@Setter(AccessLevel.NONE)
	MultipartFile comup_img;
	
	public MultipartFile getComup_img() {
		return comup_img;
	}
	
	public void setComup_img(MultipartFile comup_img) {
		this.comup_img = comup_img;

		// 업로드 파일 접근
		if (!comup_img.isEmpty()) {
			this.cpp_pname = comup_img.getOriginalFilename();

			// 실제 저장된 파일명 만들기
			UUID uuid = UUID.randomUUID();
			cpp_ppath = uuid.toString() + "_" + cpp_pname;

			// ***********************************************
			// 해당 경로로 변경
			File f = new File("C:\\workspaces\\SujeWebProject\\src\\main\\webapp\\resources\\DB"+cpp_ppath);

			try {
				comup_img.transferTo(f);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	*/
	
}
