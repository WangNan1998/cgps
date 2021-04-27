package com.cgps.mapper;

import com.cgps.pojo.BillPayment;

public interface BillPaymentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BillPayment record);

    int insertSelective(BillPayment record);

    BillPayment selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BillPayment record);

    int updateByPrimaryKey(BillPayment record);
}