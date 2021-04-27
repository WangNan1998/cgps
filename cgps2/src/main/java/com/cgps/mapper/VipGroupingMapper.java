package com.cgps.mapper;

import com.cgps.pojo.VipGrouping;

public interface VipGroupingMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(VipGrouping record);

    int insertSelective(VipGrouping record);

    VipGrouping selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(VipGrouping record);

    int updateByPrimaryKey(VipGrouping record);
}