package com.janky.springBoot.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.janky.springBoot.domain.User;

public interface UserService {

	List<User> getAll();

    User getOne(long id);

    int saveUsers(@Param("users") List<User> users);
}
