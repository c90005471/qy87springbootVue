package com.aaa.dao;

import com.aaa.entity.Role;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Mapper
@Component
public interface RoleMapper {
    int insert(Role record);

    int insertSelective(Role record);
    List<Role> findAllRole();
    //根据角色id删除角色
    int delRoleById(Long id);
    //根据角色ID删除用户和角色中间表记录
    int delRoleUser(Long id);
    List<Long> findResourceByRoleId(Long id);
    //根据角色ID删除资源和角色中间表记录
    int delRoleResource(Long id);
    int addGrandResource(Map<String,Object> map);
}