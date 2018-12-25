package com.aaa.dao;

import com.aaa.entity.Resource;
import com.aaa.entity.Role;
import com.aaa.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Mapper
public interface UserMapper {
  /*  int insert(User record);

    int insertSelective(User record);*/
    User findByName(String username);
    List<Role> findRoleByUserId(Long userid);
    List<Resource> findResourceByRoleIds(Long roleId);

}