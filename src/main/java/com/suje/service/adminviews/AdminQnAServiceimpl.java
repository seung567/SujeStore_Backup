package com.suje.service.adminviews;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.suje.dao.adminviews.AdminQnADao;
import com.suje.domain.adminviews.AdminQnAVO;

@Service("AdminQnAService")
public class AdminQnAServiceimpl implements AdminQnAService{
    
    private static final Logger logger = LoggerFactory.getLogger(AdminQnAServiceimpl.class);
    
    @Autowired
    private AdminQnADao adminQnADao; 
    
    public List<AdminQnAVO> getQnAList(AdminQnAVO vo) {
        logger.info("QnA 서비스");
        return adminQnADao.getQnAList(vo);
    }
    
    @Override
    public int getTotalCountPage() {
        logger.info("QnA관리 전체 행 수 추출 서비스");
        return adminQnADao.getTotalCountPage();
    }
    
}
