package com.greenworld.EcomBackend.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Customer {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int customerid;
	
	@Column(nullable=false)
	@NotEmpty(message="UserName is Mandatory")
	@Pattern(regexp="[a-zA-Z ]{3,20}",message="can contain only alphabets")
	private String customername;
	
	@Column(nullable=false,unique=true)
	@Pattern(regexp="^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$",message="invalid mail-id")
	private String customermailid;
	
	@Column(nullable=false,unique=true)
	@Pattern(regexp="^([987]{1})([0-9]{9})$",message="contact number can have only 10 digits")
	private String phoneno;
	
	@Transient
	@Pattern(regexp="^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$",message="Password should have min 8 char 1 number 1spl char")
	private String password;

	public int getCustomerid() {
		return customerid;
	}

	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}

	public String getCustomername() {
		return customername;
	}

	public void setCustomername(String customername) {
		this.customername = customername;
	}

	public String getCustomermailid() {
		return customermailid;
	}

	public void setCustomermailid(String customermailid) {
		this.customermailid = customermailid;
	}

	public String getPhoneno() {
		return phoneno;
	}

	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
