package com.cgps.mapper;

import com.cgps.pojo.BillNumber;

public interface BillNumberMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BillNumber record);

    int insertSelective(BillNumber record);

    BillNumber selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BillNumber record);

    int updateByPrimaryKey(BillNumber record);
}