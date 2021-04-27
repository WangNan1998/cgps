package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 会员消费记录表
    */
@Data
public class VipConsumeRecord {
    private Integer id;

    /**
    * 订单编号
    */
    private String billCode;

    /**
    * 社区店名称
    */
    private String communityName;

    /**
    * 下单时间
    */
    private Date buyTime;

    /**
    * 付款金额
    */
    private Double fuMoney;

    /**
    * 退款金额
    */
    private Double tuiMoney;

    /**
    * 创建时间
    */
    private Date createTime;
}