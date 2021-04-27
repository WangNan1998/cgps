package com.cgps.mapper;

import com.cgps.pojo.BillRestate;

public interface BillRestateMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BillRestate record);

    int insertSelective(BillRestate record);

    BillRestate selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BillRestate record);

    int updateByPrimaryKey(BillRestate record);
}