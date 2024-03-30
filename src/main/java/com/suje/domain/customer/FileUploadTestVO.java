package com.suje.domain.customer;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class FileUploadTestVO {
	
	MultipartFile file;
	String textTest1,rvp_ppath;
	String textTest2;
	String textTest3;
}
