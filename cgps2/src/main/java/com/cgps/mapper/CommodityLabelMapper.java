package com.cgps.mapper;

import com.cgps.pojo.CommodityLabel;

import java.util.List;

public interface CommodityLabelMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CommodityLabel record);

    int insertSelective(CommodityLabel record);

    CommodityLabel selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CommodityLabel record);

    int updateByPrimaryKey(CommodityLabel record);

    /**
     * 获取所有的商品标签数据
     * */
    List<CommodityLabel> findAll();
}