package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 订单退货表
    */
@Data
public class BillReturned {
    /**
    * 退货单id
    */
    private Integer returnedId;

    /**
    * 退货单编号
    */
    private String returnedCode;

    /**
    * 退货时间
    */
    private Date returnedTime;

    /**
    * 退货原因
    */
    private String returnedCause;

    /**
    * 审核时间
    */
    private Date auditingTime;

    /**
    * 结算时间
    */
    private Date settleTime;

    /**
    * 审核方式
    */
    private String auditMethod;

    /**
    * 备注
    */
    private String remark;

    /**
    * 原订单编号
    */
    private Integer billCode;

    /**
    * 单据类型id
    */
    private Integer retypeId;

    /**
    * 单据状态id
    */
    private Integer restateId;
}