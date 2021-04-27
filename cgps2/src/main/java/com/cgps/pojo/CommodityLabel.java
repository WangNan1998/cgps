package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 商品标签表
    */
@Data
public class CommodityLabel {
    private Integer id;

    private String name;

    private Date createTime;
}