package com.cgps.mapper;

import com.cgps.pojo.VipType;

public interface VipTypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(VipType record);

    int insertSelective(VipType record);

    VipType selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(VipType record);

    int updateByPrimaryKey(VipType record);
}