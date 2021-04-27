package com.cgps.mapper;

import com.cgps.pojo.VipMoneyDetail;

public interface VipMoneyDetailMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(VipMoneyDetail record);

    int insertSelective(VipMoneyDetail record);

    VipMoneyDetail selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(VipMoneyDetail record);

    int updateByPrimaryKey(VipMoneyDetail record);
}