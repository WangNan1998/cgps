package com.cgps.pojo;

import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;

/**
    * 订单表
    */
@Data
public class Bill {
    /**
    * 订单id
    */
    private Integer billId;

    /**
    * 订单编码
    */
    private String billCode;

    /**
    * 下单时间
    */
    private Date orderTime;

    /**
    * 配送时间
    */
    private Date deliveryTime;

    /**
    * 订单总金额
    */
    private Double billSum;

    /**
    * 优惠金额
    */
    private Double discountAmount;

    /**
    * 应付金额
    */
    private Double amountPayable;

    /**
    * 取货方式
    */
    private String deliveryMethod;

    /**
    * 取货码
    */
    private String deliveryCode;

    /**
    * 配送费用
    */
    private BigDecimal deliveryCost;

    /**
    * 用户备注
    */
    private String userRemarks;

    /**
    * 平台备注
    */
    private String platformRemarks;

    /**
    * 订单状态id
    */
    private Integer stateId;

    /**
    * 订单类型id
    */
    private Integer typeId;

    /**
    * 会员id
    */
    private Integer vipId;

    /**
    * 配送方式id
    */
    private Integer dispatchingId;

    /**
    * 团长id
    */
    private Integer rcId;

    /**
    * 支付方式id
    */
    private Integer paymentId;

    /**
    * 是否删除(0删除，1存在)
    */
    private Integer isDelete;
}