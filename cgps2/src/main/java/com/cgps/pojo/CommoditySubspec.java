package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 商品子规格表
    */
@Data
public class CommoditySubspec {
    private Integer id;

    private String name;

    private Integer specId;

    private Date createTime;
}