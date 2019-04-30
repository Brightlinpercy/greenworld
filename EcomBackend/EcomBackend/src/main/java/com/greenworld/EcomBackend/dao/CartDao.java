package com.greenworld.EcomBackend.dao;

import java.util.List;

import com.greenworld.EcomBackend.model.Cart;
import com.greenworld.EcomBackend.model.Customer;

public interface CartDao {
boolean insertCart(Cart cart);
boolean updateCart(Cart cart);
boolean deleteCart(int itemid);
List<Cart>selectAllCarts(Customer customer);
Cart selectOneCart(int itemid);

}
