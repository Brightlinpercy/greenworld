package com.greenworld.EcomBackend.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Category {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int categoryid;
	
	@Column(nullable=false,unique=true)
	@NotEmpty(message="Category Name is Mandatory")
	@Pattern(regexp="[a-zA-Z ]{3,255}",message="can contain only alphabets max 255char")
	private String categoryname;
	
	@Column(nullable=false)
	@NotEmpty(message="Category Description is Mandatory")
	@Pattern(regexp="[0-9a-zA-Z ]{3,900}",message="can contain alphabets and numbers max 900char")
	private String categorydesc;

	public int getCategoryid() {
		return categoryid;
	}

	public void setCategoryid(int categoryid) {
		this.categoryid = categoryid;
	}

	public String getCategoryname() {
		return categoryname;
	}

	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}

	public String getCategorydesc() {
		return categorydesc;
	}

	public void setCategorydesc(String categorydesc) {
		this.categorydesc = categorydesc;
	}
	

}
