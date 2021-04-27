package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 团长表
    */
@Data
public class Rc {
    private Integer rcId;

    /**
    * 团长编码
    */
    private String rcCode;

    /**
    * 团长手机号
    */
    private String rcPhone;

    /**
    * 团长性别
    */
    private String rcSex;

    /**
    * 团长详细地址
    */
    private String rcAddress;

    /**
    * 团长名称
    */
    private String rcName;

    /**
    * 团长登录密码
    */
    private String rcPassword;

    /**
    * 社区店名称
    */
    private String communityName;

    /**
    * 社区店地址
    */
    private String communityAddress;

    /**
    * 创建日期
    */
    private Date createTime;

    /**
    * 最后购买时间
    */
    private Date buyTime;

    /**
    * 累计购买数量
    */
    private Integer buyNumber;

    /**
    * 累计购买金额
    */
    private Double buyMoney;

    /**
    * 累计退款金额
    */
    private Double tuiMoneu;

    /**
    * 等级id
    */
    private Integer gradeId;

    /**
    * 类型id
    */
    private Integer typeId;

    /**
    * 状态id
    */
    private Integer stateId;

    /**
    * 推荐人id
    */
    private Integer recommendId;

    /**
    * 区域id
    */
    private Integer areaId;
}