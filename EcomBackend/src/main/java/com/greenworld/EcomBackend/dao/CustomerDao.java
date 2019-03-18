package com.greenworld.EcomBackend.dao;

import java.util.List;

import com.greenworld.EcomBackend.model.Customer;

public interface CustomerDao 
{
	boolean insertCustomer(Customer customer);
	boolean updateCustomer(Customer customer);
	boolean deleteCustomer(String customermailid);
	List<Customer> selectAllCustomers();
	Customer selectOneCustomer(String customermailid);

}
