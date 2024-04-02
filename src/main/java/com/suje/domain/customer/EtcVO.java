package com.suje.domain.customer;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class EtcVO {
	
	private int etc_code, o_code, etc_type_code;
	private String etc_spname, etc_ppath, etc_pname, etc_psize,etc_content, etc_date, o_content; 
	private String s_id,m_id;
	
	// 요청사항 출력용
	private String content, o_date;
	
	//컨트롤 이미지 정보 저장용
	private MultipartFile uploadImgFile;
	
	@Setter(value = AccessLevel.NONE) private String saveDir = "C:/workspaces/SujeWebProject/src/main/webapp/resources/img/DBServer/";
	
	public void setUploadImgFile(MultipartFile uploadImgFile) {
		
		this.uploadImgFile = uploadImgFile;
		
		if(!uploadImgFile.isEmpty()) {
			
			this.etc_pname = uploadImgFile.getOriginalFilename();
			this.etc_psize = String.valueOf(uploadImgFile.getSize());
			
			UUID uuid = UUID.randomUUID();
			this.etc_spname = uuid.toString() + "_" + etc_pname;
			
			File fPath = new File(saveDir + etc_spname);
			this.etc_ppath = saveDir + etc_spname;
			
			// IO 입출력 관련 예외처리
			try {
				uploadImgFile.transferTo(fPath); // 변경된 경로에 저장 처리
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		}
		
	}
	
	
}