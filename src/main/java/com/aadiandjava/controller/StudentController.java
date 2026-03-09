package com.aadiandjava.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;


import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.aadiandjava.entity.Student;
import com.aadiandjava.service.StudentService;



@Controller
public class StudentController {
	
	@Autowired
	StudentService service;
	@GetMapping("/student-enrollment-form")
	public String enrollmentForm(Model model) {
		Student s1 = new Student();
		s1.setName("Bhokare");
		s1.setEmail("swaru@gmail.com");
		model.addAttribute("student",s1);
		return "student-enrollment-form";
	}
	@GetMapping("/student-list")
	public String getAllStudents(Model model) {
		
		List<Student> students = service.getAll();
		model.addAttribute("students",students);
		return "student-list";
		
	}
	@GetMapping("/edit")
	public String editForm(@RequestParam int id, Model model ) {
		Student student = service.getStudentById(id);
		Student s1= new Student();
		model.addAttribute("student",student);
		return "edit-student";
	}
	@GetMapping("/update")
	public String updateStudent(Student student,Model model) {
		
		service.saveStudent(student);
		model.addAttribute("msg","Updated Successfully");
		return "student-list";
	}
		
		
	
	
	
	@GetMapping("/")
	public String  homePage() {
		return "home";
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@PostMapping("/save")
	public String saveStudent(Student student,Model model) {
		
//		System.err.println(student);
		
		String msg = service.saveStudent(student);
		model.addAttribute("msg",msg);
		return "student-enrollment-form";
		
	}

}