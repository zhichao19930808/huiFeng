package com.huifeng.dao;

import com.huifeng.pojo.UserEntity;
import org.springframework.stereotype.Repository;

public interface UserDao {
    public void addUser(UserEntity user);
}
