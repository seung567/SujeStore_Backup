package com.suje.dao.customer;

import com.suje.domain.customer.AccountVO;
import com.suje.domain.customer.CardInfoVO;

public interface CustomerAccountDAO {

	public AccountVO getCustomerAccount(String id);
	public int accountUpdate(AccountVO accountVO);
	
}
