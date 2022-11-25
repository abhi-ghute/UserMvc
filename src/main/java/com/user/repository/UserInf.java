package com.user.repository;


import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.user.entity.UserEntity;

@Repository
public interface UserInf extends CrudRepository<UserEntity, Integer> {

	
	public List<UserEntity> findByStudentID(String studentID);
	
	@Modifying
	@Transactional
	@Query("update UserEntity u set u.name=?1,u.email=?2,u.mob=?3,u.age=?4,u.dob=?5,u.address=?6")
	public void updateuser(String name,String email,String mob,String age,String dob,String address);
}
