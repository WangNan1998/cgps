package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 会员分组表
    */
@Data
public class VipGrouping {
    private Integer id;

    private String name;

    private Date createTime;
}