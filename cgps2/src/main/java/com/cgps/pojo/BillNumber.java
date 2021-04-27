package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 订单序号表
    */
@Data
public class BillNumber {
    private Integer id;

    private Integer billId;

    private Date createTime;
}