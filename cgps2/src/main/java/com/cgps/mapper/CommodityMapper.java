package com.cgps.mapper;

import com.cgps.pojo.Commodity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CommodityMapper {
    int deleteByPrimaryKey(Integer commodityId);

    int insert(Commodity record);

    int insertSelective(Commodity record);

    Commodity selectByPrimaryKey(Integer commodityId);

    int updateByPrimaryKeySelective(Commodity record);

    int updateByPrimaryKey(Commodity record);

    /**
     * 获取所有的商品数据
     * */
    List<Commodity> findAll( @Param("pageIndex") Integer pageIndex, @Param("pageSize") Integer PageSize);

    /**
     * 根据商品的编码查询商品
     * */
    Commodity getCommodityByCode(String code);

    /**
     * 根据各种条件进行筛选查询结果
     * */
    List<Commodity> findByCondition(@Param("commodity") Commodity commodity, @Param("pageIndex") Integer pageIndex, @Param("pageSize") Integer PageSize);

    /**
     * 逻辑删除商品
     * */
    int deleteById(Integer id);
}