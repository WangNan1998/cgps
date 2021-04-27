package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

/**
    * 会员标签表
    */
@Data
public class VipLabel {
    private Integer id;

    private String name;

    private Date createTime;
}