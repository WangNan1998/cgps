package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 商品子级分类表
    */
@Data
public class CommoditySubclassify {
    private Integer id;

    private String name;

    private Integer sortNumber;

    private Date createTime;

    private Integer classifyId;
}