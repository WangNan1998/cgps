package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 商品多规格表
    */
@Data
public class CommoditySpec {
    private Integer id;

    private String name;

    private Date createTime;
}