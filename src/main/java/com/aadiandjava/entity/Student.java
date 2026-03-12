package com.aadiandjava.entity;

import jakarta.persistence.Column;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Entity(name="students")
@Data
public class Student {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer  id;
	private String name;
	@Column(unique=true)
	private String email;
	private String qualification;
	private String gender;
	private String course;
	private String[] timings;
	private String address;
	private String mobileNo;
	private String courseDuration;
	
	
	
	

}
