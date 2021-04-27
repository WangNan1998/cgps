package com.cgps.mapper;

import com.cgps.pojo.VipRechargeRule;

public interface VipRechargeRuleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(VipRechargeRule record);

    int insertSelective(VipRechargeRule record);

    VipRechargeRule selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(VipRechargeRule record);

    int updateByPrimaryKey(VipRechargeRule record);
}