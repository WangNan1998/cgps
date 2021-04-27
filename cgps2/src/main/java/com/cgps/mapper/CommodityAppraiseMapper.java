package com.cgps.mapper;

import com.cgps.pojo.CommodityAppraise;

public interface CommodityAppraiseMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CommodityAppraise record);

    int insertSelective(CommodityAppraise record);

    CommodityAppraise selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CommodityAppraise record);

    int updateByPrimaryKey(CommodityAppraise record);
}