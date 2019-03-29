package com.greenworld.EcomBackend.dao;

import java.util.List;

import com.greenworld.EcomBackend.model.Category;

public interface CategoryDao 
{
	boolean insertCategory(Category category);
	boolean updateCategory(Category category);
	boolean deleteCategory(String categoryname);
	List<Category>selectAllCategories();
	Category selectOneCategory(String categoryname);
}
