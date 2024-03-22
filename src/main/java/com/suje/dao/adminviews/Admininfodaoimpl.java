package com.suje.dao.adminviews;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.suje.domain.adminviews.AdmininfoVO;

@Repository
public class Admininfodaoimpl implements Admininfodao {
    
    @Autowired
    SqlSessionTemplate mybatis;

    @Override
    public AdmininfoVO getAdminInfo(String id) {
        System.out.println("래포지토리 실행");
        return mybatis.selectOne("admininfodao.getAdminInfo", id);
    }

    @Override
    public void updateAdmin(AdmininfoVO adminVO) {
        System.out.println("래포지토리 실행: 관리자 정보 업데이트");
        mybatis.update("admininfodao.updateAdmin", adminVO);
    }
}
