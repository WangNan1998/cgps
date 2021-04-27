package com.cgps.mapper;

import com.cgps.pojo.CommodityClassify;

import java.util.List;

public interface CommodityClassifyMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CommodityClassify record);

    int insertSelective(CommodityClassify record);

    CommodityClassify selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CommodityClassify record);

    int updateByPrimaryKey(CommodityClassify record);

    /**
     * 查询所有的分类
     * */
    List<CommodityClassify> findAll();

    /**
     * 根据名称获取id
     * */
    int getIdByName(String name);
}