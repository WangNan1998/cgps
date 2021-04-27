package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 会员表
    */
@Data
public class Vip {
    /**
    * id
    */
    private Integer id;

    /**
    * 名字
    */
    private String name;

    /**
    * 手机号
    */
    private String phone;

    /**
    * 余额
    */
    private String money;

    /**
    * 累计积分
    */
    private Integer cumulativeIntegral;

    /**
    * 会员账号
    */
    private String account;

    /**
    * 注册时间
    */
    private Date createTime;

    /**
    * 性别
    */
    private String sex;

    /**
    * 联系地址
    */
    private String address;

    /**
    * 头像
    */
    private String headPortrait;

    /**
    * 是否有推荐资格(0没有，1有)
    */
    private Integer recommended;

    /**
    * 密码
    */
    private String password;

    /**
    * 会员卡到期时间
    */
    private Date vipTime;

    /**
    * 最后一次登录时间
    */
    private Date lastLogin;

    /**
    * 下单购买商品次数
    */
    private Integer buyNumber;

    /**
    * 累计消费金额
    */
    private Integer cumulativeConsumption;

    /**
    * 团长id
    */
    private Integer rcId;

    /**
    * 会员类型id
    */
    private Integer typeId;

    /**
    * 会员分组id
    */
    private Integer groupingId;

    /**
    * 会员标签id
    */
    private Integer labelId;

    /**
    * 会员等级id
    */
    private Integer gradeId;

    /**
    * 会员状态id
    */
    private Integer stateId;

    /**
    * 推荐人id
    */
    private Integer recommendId;

    /**
    * 会员卡id
    */
    private String vipcardId;
}