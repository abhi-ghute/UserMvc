package com.user.service;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.user.entity.UserEntity;
import com.user.model.User;
import com.user.repository.UserInf;

@Service
public class UserService {

	@Autowired
	UserInf userRepo;

	public String createUser(User user) {

		UserEntity userEntity = new UserEntity();
		BeanUtils.copyProperties(user, userEntity);

		userRepo.save(userEntity);

		return "success";
	}
	
	public String updateUser(User user) {

		UserEntity userEntity = new UserEntity();
		BeanUtils.copyProperties(user, userEntity);

		userRepo.updateuser(userEntity.getName(),userEntity.getEmail(),userEntity.getMob(),userEntity.getAge(),userEntity.getDob(),userEntity.getAddress());

		return "success";
	}

	public User getUser(String sid) {
	 	List<UserEntity> listentity= userRepo.findByStudentID(sid);
	 	User user = new User();
	 	
	 	if(listentity.size()==0) {
	 		System.out.println("nnoll");
	 		return user;
	 	}
	 	
		BeanUtils.copyProperties(listentity.get(0), user);
		

		return user;
	}
}
