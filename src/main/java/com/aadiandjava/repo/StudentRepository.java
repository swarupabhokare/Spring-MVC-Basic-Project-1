package com.aadiandjava.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.aadiandjava.entity.Student;

public interface StudentRepository extends JpaRepository<Student,Integer> {

}
