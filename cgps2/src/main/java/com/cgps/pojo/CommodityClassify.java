package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 商品分类表
    */
@Data
public class CommodityClassify {
    private Integer id;

    private String name;

    private Integer sortNumber;

    private Date createTime;
}