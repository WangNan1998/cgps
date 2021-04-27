package com.cgps.mapper;

import com.cgps.pojo.VipState;

public interface VipStateMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(VipState record);

    int insertSelective(VipState record);

    VipState selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(VipState record);

    int updateByPrimaryKey(VipState record);
}