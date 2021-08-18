package com.security.oauth2.ex.api.user;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface UserMapper {

    @Select("select * from user where userId=#{userId}")
    User findById(String userId);

}
