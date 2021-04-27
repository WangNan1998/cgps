package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 商品单位表
    */
@Data
public class CommodityUnit {
    private Integer id;

    private String name;

    private Date createTime;
}