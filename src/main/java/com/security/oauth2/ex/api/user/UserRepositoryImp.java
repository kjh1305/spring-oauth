package com.security.oauth2.ex.api.user;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

@Repository
@RequiredArgsConstructor
public class UserRepositoryImp implements UserRepository{

    private final UserMapper userMapper;

    @Override
    public User findById(String userId) {
        return userMapper.findById(userId);
    }
}
