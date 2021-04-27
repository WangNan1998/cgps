package com.cgps.pojo;

import lombok.Data;

import java.util.Date;

/**
    * 商品品牌表
    */
@Data
public class CommodityBrand {
    private Integer id;

    private String name;

    private Date create_time;
}