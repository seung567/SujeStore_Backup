// Admininfoserviceimpl.java
package com.suje.service.adminviews;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.dao.adminviews.Admininfodao;
import com.suje.domain.adminviews.AdmininfoVO;

@Service
public class Admininfoserviceimpl implements Admininfoservice {

    @Autowired
    Admininfodao dao;
    
    @Override
    public AdmininfoVO getAdminInfo(String MA_ID) { 
        System.out.println("서비스 실행: 관리자 정보 가져오기");
        return dao.getAdminInfo(MA_ID);
    }

    @Override
    public void updateAdmin(AdmininfoVO adminVO) {
        System.out.println("서비스 실행: 관리자 정보 업데이트");
        dao.updateAdmin(adminVO);
    }
    
    @Override
    public void updateAdminExceptId(AdmininfoVO adminVO) {
        System.out.println("서비스 실행: 관리자 정보 업데이트 (아이디 제외)");
        dao.updateAdminExceptId(adminVO);
    }
}