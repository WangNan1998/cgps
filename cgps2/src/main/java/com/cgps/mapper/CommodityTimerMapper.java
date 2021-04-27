package com.cgps.mapper;

import com.cgps.pojo.CommodityTimer;

public interface CommodityTimerMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CommodityTimer record);

    int insertSelective(CommodityTimer record);

    CommodityTimer selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CommodityTimer record);

    int updateByPrimaryKey(CommodityTimer record);
}