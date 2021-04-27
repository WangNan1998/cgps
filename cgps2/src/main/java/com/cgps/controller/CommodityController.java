package com.cgps.controller;

import com.alibaba.fastjson.JSON;
import com.cgps.mapper.*;
import com.cgps.pojo.*;
import com.cgps.util.Paging;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.math.RandomUtils;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/commodity")
/*@Api("测试api")
@ComponentScan(basePackages = {"com.cgps.util"})*/
public class CommodityController {

    @Resource
    private CommodityMapper commodityMapper;
    @Resource
    private CommodityBrandMapper commodityBrandMapper;
    @Resource
    private CommodityClassifyMapper commodityClassifyMapper;
    @Resource
    private CommoditySubclassifyMapper commoditySubclassifyMapper;
    @Resource
    private CommodityProviderMapper commodityProviderMapper;
    @Resource
    private CommodityLabelMapper commodityLabelMapper;
    @Resource
    private CommodityUnitMapper commodityUnitMapper;

    /**
     * 跳商品详情页面
     * */
  /*  @ApiOperation(value="跳转详情页面", notes="根据url的id来获取商品的详细信息并跳转到详情页面")
    @ApiImplicitParam(name = "id", value = "商品ID", required = true, dataType = "Integer")*/
    @RequestMapping(value = "/detail")
    public String detail(@RequestParam(value = "id")Integer id,Model model){
        Commodity commodity = commodityMapper.selectByPrimaryKey(id);
        if(null != commodity.getUnitId()) {
            commodity.setUnitName(commodityUnitMapper.selectByPrimaryKey(commodity.getUnitId()).getName());
        }
        if(null != commodity.getLabelId()) {
            commodity.setLabelName(commodityLabelMapper.selectByPrimaryKey(commodity.getLabelId()).getName());
        }
        if(null !=commodity.getBrandId()) {
            commodity.setBrandName(commodityBrandMapper.selectByPrimaryKey(commodity.getBrandId()).getName());
        }
        if(null !=commodity.getClassifyId()) {
            commodity.setClassifyName(commodityClassifyMapper.selectByPrimaryKey(commodity.getClassifyId()).getName());
        }
        if(null !=commodity.getSubclassifyId()) {
            commodity.setSubclassifyName(commoditySubclassifyMapper.selectByPrimaryKey(commodity.getSubclassifyId()).getName());
        }
        model.addAttribute(commodity);
        return "commodity_detail";
    }

    /**
     * 商品显示页面ajax数据获取
     * 解决responseBody返回中文乱码
     * @RequestMapping(value = "/commodityListData",produces ="application/text;charset=utf-8"
     * */
    @ResponseBody
    @RequestMapping(value = "/commodityListData")
    public Object commodityListData(String method,
                                    @RequestParam(value = "commodityId",required = false)Integer commodityId,
                                    Commodity commodity_, Paging paging, HttpServletRequest request,
                                    HttpServletResponse response){
        List<Commodity> commodities = new ArrayList<Commodity>();
        if("groundingChange".equals(method)){  // 修改商品上下架状态
            Commodity commodity = commodityMapper.selectByPrimaryKey(commodityId);
            if(null!=commodity) {
                if (commodity.getStateId() == 1) {
                    commodity.setStateId(2);
                } else if (commodity.getStateId() == 2) {
                    commodity.setStateId(1);
                }
                int flag = commodityMapper.updateByPrimaryKey(commodity);
                if(flag > 0){
                    return "success";
                }
                return "fail";
            }
        }else if("queryData".equals(method)){    // 用户输入查询条件进行查询
            System.out.println("-----> 进来");
            Map<String,Commodity> map = new HashMap<String, Commodity>();
            if(null == paging.getPageIndex()){
                paging.setPageIndex(1);
                paging.setPageSize(5);
            }
            paging.setTotalQuantity(getCommodityData(commodity_,new Paging(1,100)).length);
            System.out.println("总长度是--->"+paging.getTotalQuantity());
            paging.setTotalPage(paging.getTotalQuantity()%paging.getPageSize()==0
                    ?paging.getTotalQuantity()/paging.getPageSize():paging.getTotalQuantity()/paging.getPageSize()+1);
            request.getSession().setAttribute("paging",paging);

            List<Object> list = new ArrayList<Object>();
            list.add(paging);
            Object[] data = getCommodityData(commodity_,paging);
            for(Object o :data){
                list.add(o);
            }
            return JSON.toJSONString(list);
        }
        return "";
    }

    /**
     * 用户输入查询条件查询
     * */
    private Object[] getCommodityData(Commodity commodity,Paging paging){
        Map<String,Commodity> map = new HashMap<String, Commodity>();
        commodity.setIsDelete(1);
        if(null != commodity.getEnteringTeamTime() && !"".equals(commodity.getEnteringTeamTime())){
            String[] time = commodity.getEnteringTeamTime().split(" 至 ");
            commodity.setStartTime(time[0]);
            commodity.setEndTime(time[1]);
        }
        /*if(null!=commodity.getCommodityName()&&!"".equals(commodity.getCommodityName())){
            String name = commodity.getCommodityName();
            for(int i = 0;i < name.length();i++){
                String temp = name.substring(i,i+1);
                commodity.setCommodityName(temp);
                List<Commodity> list = commodityMapper.findByCondition(commodity,0,10);
                for(Commodity c: list){
                    map.put(c.getCommodityName(),c);
                }
            }
            commodity.setCommodityName(null);
            for(int i = 0;i < name.length();i++){
                String temp = name.substring(i,i+1);
                commodity.setCommodityAlias(temp);
                List<Commodity> list = commodityMapper.findByCondition(commodity,0,10);
                for(Commodity c: list){
                    map.put(c.getCommodityName(),c);
                }
            }
            commodity.setCommodityAlias(null);
            for(int i = 0;i < name.length();i++){
                String temp = name.substring(i,i+1);
                commodity.setCommodityCode(temp);
                List<Commodity> list = commodityMapper.findByCondition(commodity,0,10);
                for(Commodity c: list){
                    map.put(c.getCommodityName(),c);
                }
            }
            commodity.setCommodityCode(null);
            for(int i = 0;i < name.length();i++){
                String temp = name.substring(i,i+1);
                commodity.setCommodityMemory(temp);
                List<Commodity> list = commodityMapper.findByCondition(commodity,0,10);
                for(Commodity c: list){
                    map.put(c.getCommodityName(),c);
                }
            }
        }else {}*/
        for(Commodity c:commodityMapper.findByCondition(commodity,(paging.getPageIndex()-1)*paging.getPageSize(),paging.getPageSize())){
            map.put(c.getCommodityName(),c);
        }
        Collection<Commodity> collection = map.values();
        for(Commodity c : collection){
            if(null != c.getBrandId()){
                String brandName = commodityBrandMapper.selectByPrimaryKey(c.getBrandId()).getName();
                c.setBrandName(brandName);
            }else {c.setBrandName("");}
            if(null != c.getClassifyId()){
                String classifyName = commodityClassifyMapper.selectByPrimaryKey(c.getClassifyId()).getName();
                c.setClassifyName(classifyName);
            }else {c.setClassifyName("");}
            if(null != c.getSubclassifyId()){
                String subclassifyName = commoditySubclassifyMapper.selectByPrimaryKey(c.getSubclassifyId()).getName();
                c.setSubclassifyName(subclassifyName);
            }else {c.setSubclassifyName("");}
            if(null != c.getUnitId()){
                String unitName = commodityUnitMapper.selectByPrimaryKey(c.getUnitId()).getName();
                c.setUnitName(unitName);
            }else {c.setUnitName("");}
        }
        return collection.toArray();
    }
    /**
     * 商品新增页面ajax数据获取
     * */
    @RequestMapping(value = "/add-data")
    @ResponseBody
    public Object add_data(String method,
                           @RequestParam(value = "classifyId",required = false)Integer classifyId,
                           @RequestParam(value = "c_code",required = false)String c_code){
        if ("classify".equals(method)) {
            List<CommodityClassify> classifies = commodityClassifyMapper.findAll();
            return JSON.toJSONString(classifies);
        }else if("subClassify".equals(method)){
            List<CommoditySubclassify> subclassifies =commoditySubclassifyMapper.findSubclassBySuperId(classifyId);
            return JSON.toJSONString(subclassifies);
        }else if("provider".equals(method)){
            List<CommodityProvider> commodityProviders = commodityProviderMapper.findAll();
            return JSON.toJSONString(commodityProviders);
        }else if("label".equals(method)){
            List<CommodityLabel> commodityLabels = commodityLabelMapper.findAll();
            return JSON.toJSONString(commodityLabels);
        }else if("unit".equals(method)){
            List<CommodityUnit> commodityUnits = commodityUnitMapper.findAll();
            return JSON.toJSONString(commodityUnits);
        }else if("testCode".equals(method)){
            Commodity commodity = commodityMapper.getCommodityByCode(c_code);
            if(null!=commodity){
                return "exist";
            }else {
                return "notexist";
            }
        }
        return "";
    }

    /**
     * 商品新增
     * */
    @RequestMapping(value = "/add-commodity")
    public String add(Commodity commodity, Model model, HttpServletRequest request,
                      @RequestParam(value = "attachs",required = false) MultipartFile[] attachs){
        String path = request.getSession().getServletContext().getRealPath("statics"+ File.separator+"image");
        System.out.println("保存路径--->" +path);
        boolean flag = true;
        if(null!=commodityMapper.getCommodityByCode(commodity.getCommodityCode())){
            model.addAttribute("info","新增失败，商品编号已存在");
            return "commodity_add";
        }
        if(null != attachs) {
            for (int i = 0; i < attachs.length; i++) {
                MultipartFile attach = attachs[i];
                if (!attach.isEmpty()) {
                    String oldFileName = attach.getOriginalFilename();
                    String prefix = FilenameUtils.getExtension(oldFileName);
                    int fileSize = 500000;
                    if (attach.getSize() > fileSize) {
                        System.out.println("文件长传大小超过了500kb");
                        return "commodity_add";
                    } else if (prefix.equalsIgnoreCase("jpg")
                            || prefix.equalsIgnoreCase("png")
                            || prefix.equalsIgnoreCase("jpeg")
                            || prefix.equalsIgnoreCase("pneg")
                            || prefix.equalsIgnoreCase("mp4")) {
                        String fileName = System.currentTimeMillis() + RandomUtils.nextInt(1000000)
                                + "_Goods.jpg";
                        File targetFile = new File(path, fileName);
                        if (!targetFile.exists()) {
                            targetFile.mkdirs();
                        }

                        // 保存
                        try {
                            attach.transferTo(targetFile);
                        } catch (IOException e) {
                            e.printStackTrace();
                            System.out.println("上传失败");
                            flag = false;
                        }

                        if (i == 0) {
                            commodity.setMainPictures(fileName);
                        } else if (i == 1) {
                            commodity.setActivityPictures(fileName);
                        } else if (i == 2) {
                            commodity.setCommodityVideo(fileName);
                        }
                    } else {
                        System.out.println("上传图片格式不正确");
                        flag = false;
                    }
                }
            }
        }
        if(flag){
            commodity.setGroundingTime(new Date());
            commodity.setEnteringTime(new Date());
            commodity.setIsDelete(1);
            if(null != commodity.getBrandName()){
                for(CommodityBrand c : commodityBrandMapper.findAllBrand()){
                    if(commodity.getBrandName().equals(c.getName())){
                        int brandId = commodityBrandMapper.getIdByName(commodity.getBrandName());
                        commodity.setBrandId(brandId);
                    }
                }
            }
            if(commodityMapper.insert(commodity) > 0){
                request.setAttribute("info","success");
            }else {
                model.addAttribute(commodity);
                request.setAttribute("info", "fail");
            }
        }
        return "commodity_add";
    }

    /**
     * 商品新增页面
     * */
    @RequestMapping(value = "/add")
    public String add(){
        return "commodity_add";
    }

    /**
     * 商品档案页面
     * */
    @RequestMapping(value = "/list")
    public String list(){
        return "commodity_list";
    }

    /**
     * 商品分类页面
     * */
    @RequestMapping(value = "/category")
    public String category(){
        return "commodity_category";
    }

    /**
     * 辅助资料页面
     * */
    @RequestMapping(value = "/profile")
    public String profile(){
        return "commodity_profile";
    }

    /**
     * 商品图片页面
     * */
    @RequestMapping(value = "/goodsImg")
    public String goodsImg(){
        return "commodity_goodsImg";
    }

    /**
    * 商品评价页面
     * */
    @RequestMapping(value = "/goodsEvaluate")
    public String goodsEvaluate(){
        return "commodity_goodsEvaluate";
    }
}
