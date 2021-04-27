package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 会员等级表
    */
@Data
public class VipGrade {
    private Integer id;

    /**
    * 等级名称
    */
    private String name;

    /**
    * 升级积分
    */
    private Integer upgradePoint;

    /**
    * 等级折扣
    */
    private Double discount;

    /**
    * 积分比率
    */
    private String integralRation;

    private Date createTime;
}