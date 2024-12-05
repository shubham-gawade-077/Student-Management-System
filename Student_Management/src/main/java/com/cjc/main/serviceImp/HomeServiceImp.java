package com.cjc.main.serviceImp;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjc.main.model.Admin;
import com.cjc.main.model.Student;
import com.cjc.main.repository.HomeRepository;
import com.cjc.main.repository.StudentRepository;
import com.cjc.main.service.HomeServiceI;
@Service
public class HomeServiceImp implements HomeServiceI{
@Autowired
HomeRepository ar;
@Autowired
StudentRepository sr;
	@Override
	public void save(Admin a) {
		ar.save(a);
	}

	@Override
	public void adminPanel(String un, String ps) {
		ar.findAllByUsernameAndPassword(un,ps);

	}

	@Override
	public void saveStudent(Student st) {
		sr.save(st);
	}

	

	@Override
	public void viewStudent(Student st) {
		sr.findAll();
	}

	@Override
	public void addStudent(Student st) {
		sr.save(st);
	}

	@Override
	public Iterable displayAllData() {
		
		return sr.findAll();
	}

	@Override
	public Student getEditRecord(int sid) {
		 Optional<Student>stu= sr.findById(sid);
			Student st=stu.get();

		return st;
	}

	@Override
	public void updateRecord(Student s) {
		sr.save(s);
	}

	@Override
	public void deleteData(int sid) {
		sr.deleteById(sid);
	}
}
