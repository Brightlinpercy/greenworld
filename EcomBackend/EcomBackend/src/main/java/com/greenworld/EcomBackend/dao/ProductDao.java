package com.greenworld.EcomBackend.dao;

import java.util.List;

import com.greenworld.EcomBackend.model.Product;

public interface ProductDao 
{
boolean insertProduct(Product product);
boolean updateProduct(Product product);
boolean deleteProduct(int productid);
List<Product>selectAllProducts();
Product selectOneProduct(int productid);
}
