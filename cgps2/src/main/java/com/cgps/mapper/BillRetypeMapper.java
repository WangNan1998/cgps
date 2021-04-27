package com.cgps.mapper;

import com.cgps.pojo.BillRetype;

public interface BillRetypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BillRetype record);

    int insertSelective(BillRetype record);

    BillRetype selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BillRetype record);

    int updateByPrimaryKey(BillRetype record);
}