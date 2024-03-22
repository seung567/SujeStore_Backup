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
    public AdmininfoVO getAdminInfo(String id) {
        System.out.println("서비스 실행");
        AdmininfoVO vo = dao.getAdminInfo(id);
        return vo;
    }

    @Override
    public void updateAdmin(AdmininfoVO adminVO) {
        dao.updateAdmin(adminVO);
    }
}
