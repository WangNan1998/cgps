package com.cgps.mapper;

import com.cgps.pojo.RcArea;

public interface RcAreaMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(RcArea record);

    int insertSelective(RcArea record);

    RcArea selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RcArea record);

    int updateByPrimaryKey(RcArea record);
}