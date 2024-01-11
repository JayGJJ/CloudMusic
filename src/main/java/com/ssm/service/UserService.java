package com.ssm.service;

import com.ssm.pojo.User;

public interface UserService {
    public User login(User user);

    void register(User user);
}
