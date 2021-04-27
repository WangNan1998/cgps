package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 商品上下架定时器
    */
@Data
public class CommodityTimer {
    /**
    * id
    */
    private Integer id;

    /**
    * 上架时间
    */
    private Date upTime;

    /**
    * 下架时间
    */
    private Date downTime;

    /**
    * 创建时间
    */
    private Date createTime;

    /**
    * 商品id
    */
    private Integer commodityId;
}