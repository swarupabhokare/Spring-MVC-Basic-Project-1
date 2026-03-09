package com.aadiandjava.service;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.aadiandjava.entity.Student;
import com.aadiandjava.repo.StudentRepository;

@Service
public class StudentService {
	@Autowired
	StudentRepository repository;
	
	public String saveStudent(Student student) {
		if(student.getCourse().equals("Full Stack JAVA") || student.getCourse().equals("PYTHON") )
		{
			student.setCourseDuration("6 Months");
		}
		else if(student.getCourse().equals("Machine Learning") || student.getCourse().equals("Data Science"))
		{
			student.setCourseDuration("4 Months");
			
		}
		else {
		   student.setCourseDuration("2 Months");
		}
//		student.setTimings(Arrays.toString(student.getTimings()));
		
		repository.save(student);
		return "Student Saved Successfully";
		
	}
	
	public List<Student>getAll() {
		List<Student> students = repository.findAll();
		return students;
	}
	
	public Student getStudentById(int id) {
		Student student =null;
		
		Optional <Student> op = repository.findById(id);
		if(op.isPresent()) {
			 student = op.get();
			
		}
		return student;
		
	}
	
	
		
		
		
	

}
