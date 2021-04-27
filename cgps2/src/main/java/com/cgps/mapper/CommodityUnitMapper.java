package com.cgps.mapper;

import com.cgps.pojo.CommodityUnit;

import java.util.List;

public interface CommodityUnitMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CommodityUnit record);

    int insertSelective(CommodityUnit record);

    CommodityUnit selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CommodityUnit record);

    int updateByPrimaryKey(CommodityUnit record);

    /**
     * 获取所有的计量单位数据
     * */
    List<CommodityUnit> findAll();
}