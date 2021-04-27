package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 会员余额详情表
    */
@Data
public class VipMoneyDetail {
    private Integer id;

    /**
    * 收入/支出（0收入，1支出）
    */
    private Integer isIncome;

    /**
    * 变动金额
    */
    private Double changeMoney;

    /**
    * 变动后余额
    */
    private Double remainingSum;

    /**
    * 操作时间
    */
    private Date operateTime;

    /**
    * 备注
    */
    private String remarks;

    /**
    * vip的id
    */
    private Integer vipId;

    /**
    * 订单id
    */
    private Integer billId;

    /**
    * 收支类型id
    */
    private Integer inetypeId;

    /**
    * 操作员id
    */
    private Integer opId;
}