package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 团长等级表
    */
@Data
public class RcGrade {
    private Integer id;

    private String name;

    /**
    * 升级条件
    */
    private Double condition;

    /**
    * 佣金比例
    */
    private String commissionScale;

    /**
    * 创建时间
    */
    private Date createTime;
}