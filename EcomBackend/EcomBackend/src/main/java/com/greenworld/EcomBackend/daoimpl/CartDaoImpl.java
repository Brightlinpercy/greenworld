package com.greenworld.EcomBackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.greenworld.EcomBackend.dao.CartDao;
import com.greenworld.EcomBackend.model.Cart;
import com.greenworld.EcomBackend.model.Customer;
import com.greenworld.EcomBackend.model.Product;

@Transactional
@Repository
public class CartDaoImpl implements CartDao {
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean insertCart(Cart cart) {
		try {
			sessionFactory.getCurrentSession().save(cart);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean updateCart(Cart cart) {
		try {
			sessionFactory.getCurrentSession().update(cart);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean deleteCart(int itemid) {
		try {
			sessionFactory.getCurrentSession().delete(selectOneCart(itemid));
			return true;
		} catch (Exception e) {
			return false;

		}
	}

	@Override
	public List<Cart> selectAllCarts(Customer customer) {
		try {
			return sessionFactory.getCurrentSession().createQuery("from Cart where customer="+customer.getCustomerid()).list();
		} catch (Exception e) {
			return new ArrayList<Cart>();
		}
	}

	@Override
	public Cart selectOneCart(int itemid) {
		try {
			return (Cart)sessionFactory.getCurrentSession().createQuery("from Cart where itemid="+itemid).uniqueResult();
		}
		catch (Exception e) 
		{
		return null;
	}}

}
