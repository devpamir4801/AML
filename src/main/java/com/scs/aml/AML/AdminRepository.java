package com.scs.aml.AML;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface AdminRepository extends JpaRepository<Admin, Integer> {
	@Query(value = "select * from admin where name=? AND password=?",nativeQuery = true)
	public List<Admin> findAdmin(String username,String password);
}
