package com.janky.springBoot.dao;

import java.util.List;

import com.janky.springBoot.domain.User;

public interface UserMapper {

	List<User> getAll();

    User getOne(long id);

//    int saveUsers(@Param("users") List<User> users);
}
