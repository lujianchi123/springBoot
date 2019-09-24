package com.janky.springBoot.controller;

import com.janky.springBoot.domain.User;
import com.janky.springBoot.service.UserService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/user")
public class UserController {
	
	@Resource
	UserService userService;

	@RequestMapping("/getUsers")
	public List<User> getUsers(){
		/*List<User> userList = new ArrayList<User>();
		User u1 = new User();
		u1.setName("建持");
		u1.setAge(28);
		
		userList.add(u1);
		
		User u2 = new User();
		u2.setName("建唐");
		u2.setAge(22);
		
		userList.add(u2);*/
		
		return userService.getAll();
	}
	
	@RequestMapping("/addUser")
	public void addUser(User user){
		System.out.println(user.toString());
	}
}
