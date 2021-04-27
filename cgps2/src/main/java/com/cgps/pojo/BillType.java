package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 订单类型表
    */
@Data
public class BillType {
    private Integer id;

    private String name;

    private Date createTime;
}