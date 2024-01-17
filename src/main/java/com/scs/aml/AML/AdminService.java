package com.scs.aml.AML;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class AdminService {
	@Autowired
	AdminRepository repo;

	public List<Admin> findadmin(String username, String password) {
		return repo.findAdmin(username, password);

	}
	public void newadmin(Admin admin) {
		repo.save(admin);
	}
	public void save(Admin admin) {
		repo.save(admin);
	}
	public List<Admin> findall() {
		return repo.findAll();
	}
public void deleteAdminByAid(int aid) {
		
	repo.deleteById(aid);
	}
public Admin getAdminById(int aid) {
	
	return repo.findById(aid).get();
}
}