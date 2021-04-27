package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 商品评价表
    */
@Data
public class CommodityAppraise {
    /**
    * id
    */
    private Integer id;

    /**
    * 评价内容
    */
    private String content;

    /**
    * 评价图片
    */
    private String picture;

    /**
    * 评价星级
    */
    private Integer starLevel;

    /**
    * 审核状态（0申请中，1通过，2拒绝）
    */
    private Integer auditStatu;

    private Date createTime;

    /**
    * 商品id
    */
    private Integer commodityId;

    /**
    * 会员id
    */
    private Integer vipId;

    /**
    * 订单id
    */
    private Integer billId;
}