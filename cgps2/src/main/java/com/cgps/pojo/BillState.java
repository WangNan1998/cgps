package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 订单状态表
    */
@Data
public class BillState {
    private Integer id;

    private String name;

    private Date createTime;
}