package com.cgps.mapper;

import com.cgps.pojo.RcGrade;

public interface RcGradeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(RcGrade record);

    int insertSelective(RcGrade record);

    RcGrade selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(RcGrade record);

    int updateByPrimaryKey(RcGrade record);
}