// Admininfoservice.java
package com.suje.service.adminviews;

import com.suje.domain.adminviews.AdmininfoVO;

public interface Admininfoservice {
    AdmininfoVO getAdminInfo(String MA_ID); 
    void updateAdmin(AdmininfoVO adminVO); 
    void updateAdminExceptId(AdmininfoVO adminVO);
}