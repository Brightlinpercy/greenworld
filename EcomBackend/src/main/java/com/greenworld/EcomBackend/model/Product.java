package com.greenworld.EcomBackend.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int productid;

	@Column(nullable = false)
	@NotEmpty(message = "Product name is mandatory")
	@Pattern(regexp = "[a-zA-Z ]{3,255}", message = "can contain only alphabets maximum of 255char")
	private String productname;

	@Column(nullable = false, columnDefinition = "text")
	@NotEmpty(message = "Product description is mandatory")
	private String productdesc;

	@ManyToOne
	private Category productcategory;

	@ManyToOne
	private Seller productseller;

	
	
	

	@Column(nullable = false)
	@Min(value = 5)
	@Max(value = 100)
	private int stock;

	@Column(nullable = false)
	@Min(value = 50)
	@Max(value = 1000)
	private int price;

	@Transient
	private MultipartFile pimage;

	public MultipartFile getPimage() {
		return pimage;
	}

	public void setPimage(MultipartFile pimage) {
		this.pimage = pimage;
	}

	public int getProductid() {
		return productid;
	}

	public void setProductid(int productid) {
		this.productid = productid;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public String getProductdesc() {
		return productdesc;
	}

	public void setProductdesc(String productdesc) {
		this.productdesc = productdesc;
	}

	public Category getProductcategory() {
		return productcategory;
	}

	public void setProductcategory(Category productcategory) {
		this.productcategory = productcategory;
	}

	public Seller getProductseller() {
		return productseller;
	}

	public void setProductseller(Seller productseller) {
		this.productseller = productseller;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	
}
