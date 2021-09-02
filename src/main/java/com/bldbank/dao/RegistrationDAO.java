package com.bldbank.dao;

import com.bldbank.entity.RegistrationDetails;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface RegistrationDAO extends JpaRepository<RegistrationDetails, Integer> {

	
	
}
