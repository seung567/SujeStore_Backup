package com.suje.dao.adminviews;

import com.suje.domain.adminviews.AdmininfoVO;

public interface Admininfodao {
    AdmininfoVO getAdminInfo(String MA_ID); 
    void updateAdmin(AdmininfoVO adminVO); 
    void updateAdminExceptId(AdmininfoVO adminVO);
}
