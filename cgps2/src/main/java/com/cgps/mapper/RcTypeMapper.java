package com.cgps.mapper;

import com.cgps.pojo.RcType;

public interface RcTypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(RcType record);

    int insertSelective(RcType record);

    RcType selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RcType record);

    int updateByPrimaryKey(RcType record);
}