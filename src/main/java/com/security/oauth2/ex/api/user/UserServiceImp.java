package com.security.oauth2.ex.api.user;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserServiceImp implements UserService{

    private final UserRepository userRepository;

    @Override
    public User findById(String userId) {
        return userRepository.findById(userId);
    }
}
