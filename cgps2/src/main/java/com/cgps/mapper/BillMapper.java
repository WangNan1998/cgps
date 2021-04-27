package com.cgps.mapper;

import com.cgps.pojo.Bill;

import javax.xml.crypto.Data;
import java.util.Date;

public interface BillMapper {
    int deleteByPrimaryKey(Integer billId);

    int insert(Bill record);

    int insertSelective(Bill record);

    Bill selectByPrimaryKey(Integer billId);

    int updateByPrimaryKeySelective(Bill record);

    int updateByPrimaryKey(Bill record);

    /**
     * 查询指定天数内的订单数量
     * @param day 指定天数
     * */
    int findBillByDate(Integer day);

    /**
     * 查询指定天数内的订单总金额
     * */
    double totalOrderAmount(Integer day);

    /**
    * 查询待发货订单数量
    * */
    int getQuantityNotShipped();

    /**
     * 查询被取消的订单数量
     * */
    int getQuantityCancelled();
}