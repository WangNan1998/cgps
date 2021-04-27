package com.cgps.mapper;

import com.cgps.pojo.BillCommoditys;

public interface BillCommoditysMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BillCommoditys record);

    int insertSelective(BillCommoditys record);

    BillCommoditys selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BillCommoditys record);

    int updateByPrimaryKey(BillCommoditys record);
}