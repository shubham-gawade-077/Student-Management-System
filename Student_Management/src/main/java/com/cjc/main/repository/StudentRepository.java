package com.cjc.main.repository;

import org.springframework.data.repository.CrudRepository;

import com.cjc.main.model.Student;

public interface StudentRepository extends CrudRepository<Student, Integer>{

	void findAllByUsernameAndPassword(String un, String ps);



}
