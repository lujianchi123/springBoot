package com.janky.springBoot.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.janky.springBoot.dao.UserMapper;
import com.janky.springBoot.domain.User;
import com.janky.springBoot.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Resource
	private UserMapper userDao;
	
	@Override
	public List<User> getAll() {
		List<User> list = userDao.getAll();
		return list;
	}

	@Override
	public User getOne(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int saveUsers(List<User> users) {
		// TODO Auto-generated method stub
		return 0;
	}

}
