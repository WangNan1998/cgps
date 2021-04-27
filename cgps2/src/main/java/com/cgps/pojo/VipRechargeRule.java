package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 会员充值方案表
    */
@Data
public class VipRechargeRule {
    private Integer id;

    /**
    * 方案名称
    */
    private String schemeName;

    /**
    * 充值金额(达到此金额满足规则)
    */
    private Double rechargeMoney;

    /**
    * 赠送金额
    */
    private Double largessMoney;

    /**
    * 活动图片
    */
    private String activityPhoto;

    /**
    * 创建时间
    */
    private Date createTime;
}