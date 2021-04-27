package com.cgps.mapper;

import com.cgps.pojo.CommodityBrand;

import java.util.ArrayList;
import java.util.List;

public interface CommodityBrandMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CommodityBrand record);

    int insertSelective(CommodityBrand record);

    CommodityBrand selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CommodityBrand record);

    int updateByPrimaryKey(CommodityBrand record);

    /**
     * 根据品牌名称，获取品牌id
     * */
    int getIdByName(String name);

    /**
     * 获取所有的商品品牌信息
     * */
    List<CommodityBrand> findAllBrand();
}