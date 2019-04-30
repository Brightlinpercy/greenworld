package com.greenworld.EcomBackend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.greenworld.EcomBackend.dao.CategoryDao;
import com.greenworld.EcomBackend.model.Category;

@Transactional
@Repository
public class CategoryDaoImpl implements CategoryDao {
	
@Autowired
SessionFactory sessionFactory;

	@Override
	public boolean insertCategory(Category category) {
	try {
		sessionFactory.getCurrentSession().save(category);
		return true;
	}
	catch (Exception e){
		return false;
	}}

	@Override
	public boolean updateCategory(Category category) {
		try {
			sessionFactory.getCurrentSession().update(category);
			return true;
		}
		catch (Exception e){
			return false;
		}}		

	@Override
	public boolean deleteCategory(String categoryname) {
		try
		{
			sessionFactory.getCurrentSession().delete(selectOneCategory(categoryname));
			return true;
		}
		catch (Exception e)
		{
		return false;
	}}

	@Override
	public List<Category> selectAllCategories() {
		try {
			return sessionFactory.getCurrentSession().createQuery("from Category").list();
		}
		catch (Exception e) {
		return null;
		}}

	@Override
	public Category selectOneCategory(String categoryname) {
		try {
			return (Category)sessionFactory.getCurrentSession().createQuery("from Category where categoryname='"+categoryname+"'").uniqueResult();
		}
		catch (Exception e) 
		{
		return null;
	}
	}
}
