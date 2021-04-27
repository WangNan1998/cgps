package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 支付方式表
    */
@Data
public class BillPayment {
    private Integer id;

    private String name;

    private Date createTime;
}