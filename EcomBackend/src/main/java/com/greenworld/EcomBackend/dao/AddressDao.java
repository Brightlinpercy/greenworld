package com.greenworld.EcomBackend.dao;

import java.util.List;

import com.greenworld.EcomBackend.model.Address;

public interface AddressDao {

	boolean createAddress(Address address);
	boolean updateAddress(Address address);
	boolean deleteAddress(Address address);
	List<Address> selectAllAddress(int customerid);

	Address selectOneAddress(int addressid);
}
