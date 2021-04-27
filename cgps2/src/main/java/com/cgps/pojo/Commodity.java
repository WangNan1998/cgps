package com.cgps.pojo;

import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

/**
    * 社区团购商品表
    */
@Data
public class Commodity {
    /**
    * 商品id
    */
    private Integer commodityId;

    /**
    * 商品编码
    */
    private String commodityCode;

    /**
    * 商品名称
    */
    private String commodityName;

    /**
    * 商品别名
    */
    private String commodityAlias;

    /**
    * 商品助记码
    */
    private String commodityMemory;

    /**
    * 商品商城价
    */
    private BigDecimal commodityMprice;

    /**
    * 商品划线价
    */
    private BigDecimal commodityDprice;

    /**
    * 商品源产地
    */
    private String commoditySource;

    /**
    * 商品说明
    */
    private String commodityExplain;

    /**
    * 商品描述
    */
    private String commodityDescribe;

    /**
    * 商品录入时间
    */
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date enteringTime;
    private String startTime;     // 用户查询条件 记录开始和结束时间
    private String endTime;
    private String enteringTeamTime;

    /**
    * 商品上架时间
    */
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date groundingTime;

    /**
    * 商品下架时间
    */
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date undercarriageTime;

    /**
    * 商品主图
    */
    private String mainPictures;

    /**
    * 商品活动图
    */
    private String activityPictures;

    /**
    * 商品视频
    */
    private String commodityVideo;

    /**
    * 商品状态id
    */
    private Integer stateId;

    /**
    * 商品分类id
    */
    private Integer classifyId;
    private String classifyName;

    /**
    * 商品分类子级id
    */
    private Integer subclassifyId;
    private String subclassifyName;

    /**
    * 商品品牌id
    */
    private Integer brandId;
    private String brandName;

    /**
    * 商品单位id
    */
    private Integer unitId;
    private String unitName;

    /**
    * 商品供应商id
    */
    private Integer providerId;

    /**
    * 商品标签id
    */
    private Integer labelId;
    private String labelName;

    /**
    * 规格id
    */
    private Integer specId;

    /**
    * 是否删除(0删除，1存在)
    */
    private Integer isDelete;
}