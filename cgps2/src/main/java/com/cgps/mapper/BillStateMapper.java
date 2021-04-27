package com.cgps.mapper;

import com.cgps.pojo.BillState;

public interface BillStateMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BillState record);

    int insertSelective(BillState record);

    BillState selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BillState record);

    int updateByPrimaryKey(BillState record);
}