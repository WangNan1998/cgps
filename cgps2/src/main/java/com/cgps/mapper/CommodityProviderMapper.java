package com.cgps.mapper;

import com.cgps.pojo.CommodityProvider;

import java.util.List;

public interface CommodityProviderMapper {
    int deleteByPrimaryKey(Integer proId);

    int insert(CommodityProvider record);

    int insertSelective(CommodityProvider record);

    CommodityProvider selectByPrimaryKey(Integer proId);

    int updateByPrimaryKeySelective(CommodityProvider record);

    int updateByPrimaryKey(CommodityProvider record);

    /**
     * 获取所有的供应商数据
     * */
    List<CommodityProvider> findAll();
}