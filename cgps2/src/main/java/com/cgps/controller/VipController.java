package com.cgps.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/vip")
public class VipController {

    /**
     * 会员列表页面
     * */
    @RequestMapping(value = "/list")
    public String list(){
        return "vip_list";
    }

    /**
     * 会员等级页面
     * */
    @RequestMapping(value = "/level")
    public String level(){
        return "vip_level";
    }

    /**
     * 会员标签页面
     * */
    @RequestMapping(value = "/tag")
    public String tag(){
        return "vip_tag";
    }

    /**
     * 会员分组页面
     * */
    @RequestMapping(value = "/group")
    public String group(){
        return "vip_group";
    }

    /**
     * 会员卡页面
     * */
    @RequestMapping(value = "/vipCard")
    public String vipCard(){
        return "vip_vipCard";
    }

    /**
     * 会员积分页面
     * */
    @RequestMapping(value = "/integral")
    public String integral(){
        return "vip_integral";
    }
}
