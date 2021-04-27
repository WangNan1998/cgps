package com.cgps.mapper;

import com.cgps.pojo.CommoditySpec;

public interface CommoditySpecMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CommoditySpec record);

    int insertSelective(CommoditySpec record);

    CommoditySpec selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CommoditySpec record);

    int updateByPrimaryKey(CommoditySpec record);
}