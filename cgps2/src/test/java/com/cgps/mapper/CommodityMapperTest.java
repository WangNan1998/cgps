package com.cgps.mapper;

import com.cgps.pojo.Commodity;
import org.junit.Before;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.TestExecutionListeners;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.support.DependencyInjectionTestExecutionListener;
import org.springframework.test.context.testng.AbstractTestNGSpringContextTests;
import org.springframework.test.context.testng.AbstractTransactionalTestNGSpringContextTests;

import javax.annotation.Resource;

import java.util.logging.Logger;

import static org.junit.jupiter.api.Assertions.*;
@RunWith(SpringJUnit4ClassRunner.class)
@TestExecutionListeners({ DependencyInjectionTestExecutionListener.class })
@ContextConfiguration(locations = {"/applicationContext-mybatis.xml"})
class CommodityMapperTest {
    @Resource
    CommodityMapper commodityMapper;

    /*@Before
    public void before(){
        commodityMapper = (CommodityMapper) applicationContext.getBean("commodityMapper");
    }*/

    @Test
    void findAll() {
        System.out.println(commodityMapper);
        /*ApplicationContext a = new ClassPathXmlApplicationContext("applicationContext-mybatis.xml");
        CommodityMapper commodityMapper = (CommodityMapper) a.getBean("commodityMapper");*/
       /* for(Commodity c : commodityMapper.findAll(0,10)){
            System.out.println(c.getCommodityName()+"\n");
        }*/
    }
}