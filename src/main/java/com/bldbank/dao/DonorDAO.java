package com.bldbank.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.bldbank.entity.DonorDetails;

@Repository
public interface DonorDAO extends JpaRepository<DonorDetails, Integer>,CrudRepository<DonorDetails, Integer>,PagingAndSortingRepository<DonorDetails, Integer>{

	//@Query(value="select DONORNAME,HOSPITALNAME,MOBILENO,BLOODGROUP,UNITS from donordetails where Bloodgroup=:bloodGroup", nativeQuery=true)
	public List<DonorDetails> findByBloodGroup(@Param("bloodGroup") String bloodGroup);
}


