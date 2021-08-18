package com.security.oauth2.ex.api.user;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {
    public void findById();
}
