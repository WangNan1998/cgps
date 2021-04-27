package com.cgps.mapper;

import com.cgps.pojo.CommodityState;

public interface CommodityStateMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CommodityState record);

    int insertSelective(CommodityState record);

    CommodityState selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CommodityState record);

    int updateByPrimaryKey(CommodityState record);
}