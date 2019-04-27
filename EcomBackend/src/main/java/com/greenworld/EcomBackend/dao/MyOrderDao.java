package com.greenworld.EcomBackend.dao;

import java.util.List;

import com.greenworld.EcomBackend.model.Customer;
import com.greenworld.EcomBackend.model.MyOrder;

public interface MyOrderDao {
	boolean insertMyOrder(MyOrder myorder);
	boolean updateMyOrder(MyOrder myorder);
	boolean deleteMyOrder(String orderid);
	List<MyOrder>selectAllMyOrders(Customer customer);

	MyOrder selectOneMyOrder(String orderid);
	
}
