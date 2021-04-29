package com.devpro.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity // tương ứng với 1 Table
@Table(name = "tbl_contact")
public class Contact extends BaseEntity {
	
	@Column(name = "first_name", nullable = false) // tương ứng với cột trong table
	private String firstName;
	
	@Column(name = "last_name", nullable = false)
	private String lastName;
	
//	@Column(name = "first_name", nullable = false)
	@Transient // không mapping với table.
	private String country;
	
	@Column(name = "message", nullable = false)
	private String subject;

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

}
