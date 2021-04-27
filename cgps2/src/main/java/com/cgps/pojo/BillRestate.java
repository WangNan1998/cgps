package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 单据状态表
    */
@Data
public class BillRestate {
    private Integer id;

    private String name;

    private Date createTime;
}