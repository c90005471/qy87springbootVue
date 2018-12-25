package com.aaa.dao;

import com.aaa.entity.Resource;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;
@Component
@Mapper
public interface ResourceMapper {
    int insert(Resource record);

    int insertSelective(Resource record);
    List<Resource> findAllResource();
}