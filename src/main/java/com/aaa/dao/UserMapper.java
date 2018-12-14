package com.aaa.dao;

import com.aaa.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

@Component
@Mapper
public interface UserMapper {
  /*  int insert(User record);

    int insertSelective(User record);*/
    User findByName(String username);

}