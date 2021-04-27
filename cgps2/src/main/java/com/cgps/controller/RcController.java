package com.cgps.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/rc")
public class RcController {

    /**
     * 团长列表页面
     * */
    @RequestMapping(value = "/list")
    public String list(){
        return "rc_list";
    }

    /**
     * 团长等级页面
     * */
    @RequestMapping(value = "/level")
    public String level(){
        return "rc_level";
    }

    /**
     * 团长排行页面
     * */
    @RequestMapping(value = "/shopRank")
    public String shopRank(){
        return "rc_shopRank";
    }
}
