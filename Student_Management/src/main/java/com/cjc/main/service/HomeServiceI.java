package com.cjc.main.service;

import com.cjc.main.model.Admin;
import com.cjc.main.model.Student;

public interface HomeServiceI {

	public void save(Admin a);

	public void adminPanel(String un, String ps);

	public void saveStudent(Student st);


	public void addStudent(Student st);

	public void viewStudent(Student st);

	public Iterable displayAllData();

	public Student getEditRecord(int sid);

	public void updateRecord(Student s);

	public void deleteData(int uid);

}
