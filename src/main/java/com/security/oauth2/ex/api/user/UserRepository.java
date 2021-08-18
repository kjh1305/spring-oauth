package com.security.oauth2.ex.api.user;

public interface UserRepository {
    public User findById(String userId);
}
