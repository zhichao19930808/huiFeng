package com.huifeng.service.impl;

import com.huifeng.dao.UserDao;
import com.huifeng.pojo.UserEntity;
import com.huifeng.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    public void addUser(UserEntity user) {
        userDao.addUser(user);
    }
}
