package com.ssm.dao;

import com.ssm.pojo.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {
    User login(User user);

    void register(User user);
}
