package com.bldbank.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.bldbank.dao.UserDAO;
import com.bldbank.entity.AdminUser;

@Service
public class MyUserDetialsService implements UserDetailsService {

	
	@Autowired
	UserDAO userDao;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		AdminUser user=userDao.findByUsername(username);
		if(user==null) {throw new UsernameNotFoundException("Username not found");}
		
		return new UserDetailsImpl(user);
	}

}
