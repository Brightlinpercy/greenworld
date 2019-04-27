package com.greenworld.EcomBackend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.greenworld.EcomBackend.dao.MyOrderDao;
import com.greenworld.EcomBackend.model.Customer;
import com.greenworld.EcomBackend.model.MyOrder;
@Transactional
@Repository
public class MyOrderDaoImpl implements MyOrderDao {

	@Autowired
	SessionFactory sessionFactory;
	@Override
	public boolean insertMyOrder(MyOrder myorder) {
		try {
			System.out.println("1-1");
			sessionFactory.getCurrentSession().save(myorder);
			System.out.println("1-2");
			return true;
		} catch (Exception e) {
			System.out.println("1-3");
			System.out.println(e.getMessage());
			return false;
		}
	
	}

	@Override
	public boolean updateMyOrder(MyOrder myorder) {
		try {
			sessionFactory.getCurrentSession().update(myorder);
			return true;
		} catch (Exception e) {
		return false;
	}}

	@Override
	public boolean deleteMyOrder(String orderid) {
		try {
			sessionFactory.getCurrentSession().delete(selectOneMyOrder("orderid"));
			return true;
		} catch (Exception e) {
		return false;
	}}

	@Override
	public List<MyOrder> selectAllMyOrders(Customer customer) {
		try {
			return sessionFactory.getCurrentSession().createQuery("from MyOrder where customer="+customer.getCustomerid()).list();
		} catch (Exception e) {
		return null;
	}}

	@Override
	public MyOrder selectOneMyOrder(String orderid) {

		try {
			System.out.println(100);

			return (MyOrder)sessionFactory.getCurrentSession().createQuery("from MyOrder where orderid='"+orderid+"'").uniqueResult();
		}
		catch (Exception e) 
		{
		return null;
	}}

}
