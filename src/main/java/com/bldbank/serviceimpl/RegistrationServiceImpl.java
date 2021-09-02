package com.bldbank.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bldbank.dao.RegistrationDAO;
import com.bldbank.entity.RegistrationDetails;
import com.bldbank.service.RegistrationService;

@Service
public class RegistrationServiceImpl implements RegistrationService{

	@Autowired
	RegistrationDAO regDAO;
	
	@Override
	public RegistrationDetails saveRegistration(RegistrationDetails regdetails) {
		
		return regDAO.save(regdetails);
	}

}
