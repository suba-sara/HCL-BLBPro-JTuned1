package com.bldbank.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bldbank.entity.AdminUser;

public interface UserDAO extends JpaRepository<AdminUser, Integer> {

	AdminUser findByUsername(String username);
	
	
}
