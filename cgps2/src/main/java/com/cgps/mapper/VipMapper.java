package com.cgps.mapper;

import com.cgps.pojo.Vip;

public interface VipMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Vip record);

    int insertSelective(Vip record);

    Vip selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Vip record);

    int updateByPrimaryKey(Vip record);

    /**
     * 查询指定几天内的新增会员数量
     * @param day 天数
     * */
    int getVipQuantity(Integer day);
}