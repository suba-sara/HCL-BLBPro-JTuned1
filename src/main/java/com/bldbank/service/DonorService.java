package com.bldbank.service;

import java.util.List;

import com.bldbank.entity.DonorDetails;

public interface DonorService {

	DonorDetails saveDonor(DonorDetails donor);
	DonorDetails updateDonor(DonorDetails donor);
	List<DonorDetails> getAllDonorList();
	DonorDetails getDonor(Integer donorId);
	void deleteDonor(Integer donorId);
	List<DonorDetails> getDonorsList(String bloodGroup);
	
}
