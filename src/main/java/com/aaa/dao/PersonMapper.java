package com.aaa.dao;

import com.aaa.entity.Person;

public interface PersonMapper {
    int insert(Person record);

    int insertSelective(Person record);
}