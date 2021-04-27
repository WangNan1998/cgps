package com.cgps.mapper;

import com.cgps.pojo.BillDispatching;

public interface BillDispatchingMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BillDispatching record);

    int insertSelective(BillDispatching record);

    BillDispatching selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BillDispatching record);

    int updateByPrimaryKey(BillDispatching record);
}