package com.cgps.mapper;

import com.cgps.pojo.CommoditySubspec;

public interface CommoditySubspecMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CommoditySubspec record);

    int insertSelective(CommoditySubspec record);

    CommoditySubspec selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CommoditySubspec record);

    int updateByPrimaryKey(CommoditySubspec record);
}