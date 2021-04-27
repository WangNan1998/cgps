package com.cgps.mapper;

import com.cgps.pojo.BillType;

public interface BillTypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BillType record);

    int insertSelective(BillType record);

    BillType selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BillType record);

    int updateByPrimaryKey(BillType record);
}