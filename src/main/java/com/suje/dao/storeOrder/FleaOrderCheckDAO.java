package com.suje.dao.storeOrder;

import java.util.List;

import com.suje.domain.storeOrder.FleaOrderCheckVO;

public interface FleaOrderCheckDAO {
	public List<FleaOrderCheckVO> getFleaOrderCheck(String id);
}
