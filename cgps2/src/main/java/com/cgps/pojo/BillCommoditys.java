package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 商品清单表
    */
@Data
public class BillCommoditys {
    /**
    * 商品清单id
    */
    private Integer id;

    /**
    * 商品数量
    */
    private Integer number;

    /**
    * 订单编号
    */
    private String billCode;

    /**
    * 商品id
    */
    private Integer commodityId;

    /**
    * 创建时间
    */
    private Date createTime;
}