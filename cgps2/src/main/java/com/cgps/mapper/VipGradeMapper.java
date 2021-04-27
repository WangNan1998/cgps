package com.cgps.mapper;

import com.cgps.pojo.VipGrade;

public interface VipGradeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(VipGrade record);

    int insertSelective(VipGrade record);

    VipGrade selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(VipGrade record);

    int updateByPrimaryKey(VipGrade record);
}