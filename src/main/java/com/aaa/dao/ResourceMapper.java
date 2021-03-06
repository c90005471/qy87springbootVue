package com.aaa.dao;

import com.aaa.entity.Resource;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

@Component
@Mapper
public interface ResourceMapper {
    int insert(Resource record);

    int insertSelective(Resource record);
    List<Resource> findAllResource();
    List<Resource> findAllMenuResource();
    List<Long> findChildResourceById(Long id);
    int  deleteResourceByIds(List<Long> list);
    Map<String ,Object> findResourceById(Long id);
    int editResource( Resource resource);
}