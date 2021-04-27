package com.cgps.mapper;

import com.cgps.pojo.VipRechargeableCard;

public interface VipRechargeableCardMapper {
    int deleteByPrimaryKey(Integer cardId);

    int insert(VipRechargeableCard record);

    int insertSelective(VipRechargeableCard record);

    VipRechargeableCard selectByPrimaryKey(Integer cardId);

    int updateByPrimaryKeySelective(VipRechargeableCard record);

    int updateByPrimaryKey(VipRechargeableCard record);
}