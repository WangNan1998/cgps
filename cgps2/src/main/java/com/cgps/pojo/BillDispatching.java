package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 订单配送方式表
    */
@Data
public class BillDispatching {
    private Integer id;

    private String name;

    private Date createTime;
}