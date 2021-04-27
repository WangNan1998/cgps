package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 会员充值卡表
    */
@Data
public class VipRechargeableCard {
    /**
    * 卡id
    */
    private Integer cardId;

    /**
    * 批次号
    */
    private Integer batchNo;

    /**
    * 卡名字
    */
    private String cardName;

    /**
    * 批次金额
    */
    private Double batchMoney;

    /**
    * 批次数量
    */
    private Integer batchNumber;

    /**
    * 已使用金额
    */
    private Double useMoney;

    /**
    * 已使用数量
    */
    private Integer useNumber;

    /**
    * 已作废金额
    */
    private Double cancelMoney;

    /**
    * 已作废数量
    */
    private Integer cancelNumber;

    /**
    * 创建时间
    */
    private Date createTime;
}