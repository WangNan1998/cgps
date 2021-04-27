package com.cgps.mapper;

import com.cgps.pojo.BillReturned;

public interface BillReturnedMapper {
    int deleteByPrimaryKey(Integer returnedId);

    int insert(BillReturned record);

    int insertSelective(BillReturned record);

    BillReturned selectByPrimaryKey(Integer returnedId);

    int updateByPrimaryKeySelective(BillReturned record);

    int updateByPrimaryKey(BillReturned record);


}