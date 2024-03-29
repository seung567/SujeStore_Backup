package com.suje.service.storeOrder;

import java.util.List;

import com.suje.domain.storeOrder.FleaOrderCheckVO;

public interface FleaOrderCheckService {
	public List<FleaOrderCheckVO> getFleaOrderCheck(String id);
}
