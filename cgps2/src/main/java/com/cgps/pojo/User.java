package com.cgps.pojo;

import java.util.Date;
import lombok.Data;

@Data
public class User {
    private Integer userId;

    private String userCode;

    private String userName;

    private String userPassword;

    private String userPhone;

    private Date createTime;
}