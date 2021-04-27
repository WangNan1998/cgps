package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 单据类型表
    */
@Data
public class BillRetype {
    private Integer id;

    private String name;

    private Date createTime;
}