package com.cgps.mapper;

import com.cgps.pojo.RcState;

public interface RcStateMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(RcState record);

    int insertSelective(RcState record);

    RcState selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RcState record);

    int updateByPrimaryKey(RcState record);
}