package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 供应商表
    */
@Data
public class CommodityProvider {
    /**
    * 供应商id
    */
    private Integer proId;

    /**
    * 供应商名称
    */
    private String proName;

    /**
    * 联系人名称
    */
    private String contactName;

    /**
    * 联系人电话
    */
    private String contactPhone;

    /**
    * 地址
    */
    private String address;

    private Date createTime;

    /**
    * 创建人id
    */
    private Integer createBy;
}