package com.greenworld.EcomBackend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.greenworld.EcomBackend.dao.AddressDao;
import com.greenworld.EcomBackend.model.Address;
@Repository("AddressDao")
@Transactional
public class AddressDaoImpl implements AddressDao {
	
	@Autowired
SessionFactory sessionFactory;
	@Override
	public boolean createAddress(Address address) {
		try {
			sessionFactory.getCurrentSession().save(address);
			return true;

		} catch (Exception e) {
					return false;
		}
	}

	@Override
	public boolean updateAddress(Address address) {
		try {
			sessionFactory.getCurrentSession().update(address);
			return true;
		} catch (Exception e) {
			
		return false;
	}}

	@Override
	public boolean deleteAddress(Address address) {
		try {
			sessionFactory.getCurrentSession().delete(address);
			return true;

		} catch (Exception e) {
		return false;
	}}

	@Override
	public List<Address> selectAllAddress(int customerid) {
		
		try {
			return sessionFactory.getCurrentSession().createQuery("from Address where customer_customerid="+customerid).list();
		} catch (Exception e) {
		return null;
	}}

	@Override
	public Address selectOneAddress(int addressid) {
		try {
			return (Address) sessionFactory.getCurrentSession().createQuery("from Address where addressid=" + addressid).uniqueResult();

		} catch (Exception e) {
		return null;
	}

}}
