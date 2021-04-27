package com.cgps.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/bill")
public class BillController {

    /**
     * 订单列表页面
     * */
    @RequestMapping(value = "/list")
    public String list(){
        return "bill_list";
    }

    /**
     * 退货管理页面*/
    @RequestMapping(value = "/returnOrder")
    public String returnOrder(){
        return "bill_returnOrder";
    }

    /**
     * 售后原因页面
     * */
    @RequestMapping(value = "/afterSaleReason")
    public String afterSaleReason(){
        return "bill_afterSaleReason";
    }

    /**
     * 取消订单页面
     * */
    @RequestMapping(value = "/cancelOrder")
    public String cancelOrder(){
        return "bill_cancelOrder";
    }
}
