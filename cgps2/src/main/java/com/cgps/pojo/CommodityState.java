package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 商品状态表
    */
@Data
public class CommodityState {
    private Integer id;

    private String name;

    private Date createTime;
}