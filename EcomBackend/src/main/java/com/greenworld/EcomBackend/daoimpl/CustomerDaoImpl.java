package com.greenworld.EcomBackend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.greenworld.EcomBackend.dao.CustomerDao;
import com.greenworld.EcomBackend.model.Customer;
import com.greenworld.EcomBackend.model.UserCred;

@Transactional
@Repository
public class CustomerDaoImpl implements CustomerDao {
	@Autowired
SessionFactory sessionFactory;
	@Override
	public boolean insertCustomer(Customer customer) {
		try
		{
			UserCred uc=new UserCred();
			uc.setUsername(customer.getCustomermailid());
			uc.setPassword(customer.getPassword());
			uc.setRole("ROLE_CUSTOMER");
			uc.setStatus(false);
			sessionFactory.getCurrentSession().save(customer);
			sessionFactory.getCurrentSession().save(uc);
			return true;
		}
		catch (Exception e)
		{
		return false;
	}}

	@Override
	public boolean updateCustomer(Customer customer) {
		try
		{
			sessionFactory.getCurrentSession().update(customer);
			return true;
		}
		catch (Exception e)
		{
		return false;
	}}
		
	

	@Override
	public boolean deleteCustomer(String customermailid) {
		try
		{
			sessionFactory.getCurrentSession().delete(customermailid,Customer.class);
			return true;
		}
		catch (Exception e)
		{
		return false;
	}}
	

	@Override
	public List<Customer> selectAllCustomers() {
		try {
			return sessionFactory.getCurrentSession().createQuery("from Customer").list();
		}
		catch (Exception e) {
		return null;
		}}

	@Override
	public Customer selectOneCustomer(String customermailid) {
		try {
			return (Customer)sessionFactory.getCurrentSession().createQuery("from Customer where customermailid='"+customermailid+"'").uniqueResult();
		}
		catch (Exception e) 
		{
		return null;
	}
	}
}

