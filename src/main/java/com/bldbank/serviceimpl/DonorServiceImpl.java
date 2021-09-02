package com.bldbank.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.bldbank.dao.DonorDAO;
import com.bldbank.entity.DonorDetails;
import com.bldbank.service.DonorService;

@Service
public class DonorServiceImpl implements DonorService {

	@Autowired
	DonorDAO dnrDAO;
	
	@Override
	public DonorDetails saveDonor(DonorDetails donor) {
		// TODO Auto-generated method stub
		return dnrDAO.save(donor);
	}

	@Override
	public DonorDetails updateDonor(DonorDetails donor) {
		// TODO Auto-generated method stub
		return dnrDAO.saveAndFlush(donor);
	}

	@Override
	public List<DonorDetails> getAllDonorList() {
		// TODO Auto-generated method stub
		//repository.findAll(Sort.by(Sort.Direction.DESC, "colName"));
		return dnrDAO.findAll(Sort.by(Sort.Direction.DESC, "donorId"));
	}

	@Override
	public DonorDetails getDonor(Integer donorId) {
		// TODO Auto-generated method stub
		return dnrDAO.findById(donorId).get();
	}

	@Override
	public void deleteDonor(Integer donorId) {
		// TODO Auto-generated method stub
		dnrDAO.deleteById(donorId);
	}

	@Override
	public List<DonorDetails> getDonorsList(String bloodGroup) {
		// TODO Auto-generated method stub
		return dnrDAO.findByBloodGroup(bloodGroup);
	}

	
	
}
