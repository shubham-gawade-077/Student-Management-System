package com.cjc.main.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.cjc.main.model.Admin;

@Repository
public interface HomeRepository extends CrudRepository<Admin,Integer>{
	public void findAllByUsernameAndPassword(String un, String ps);
}
