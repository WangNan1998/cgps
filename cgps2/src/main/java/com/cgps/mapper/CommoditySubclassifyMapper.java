package com.cgps.mapper;

import com.cgps.pojo.CommoditySubclassify;

import java.util.List;

public interface CommoditySubclassifyMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CommoditySubclassify record);

    int insertSelective(CommoditySubclassify record);

    CommoditySubclassify selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CommoditySubclassify record);

    int updateByPrimaryKey(CommoditySubclassify record);

    /**
     * 根据大分类id查询下面的所有子分类
     * */
    List<CommoditySubclassify> findSubclassBySuperId(Integer id);


}