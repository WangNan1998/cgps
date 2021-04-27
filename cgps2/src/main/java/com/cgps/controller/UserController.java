package com.cgps.controller;

import com.cgps.mapper.UserMapper;
import com.cgps.pojo.User;
import com.cgps.util.Constant;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;

@Controller
public class UserController {

    @Resource
    private UserMapper userMapper;

    /**
     * 注销当前登录
     * */
    @RequestMapping(value = "/outlogin")
    public String outlogin(HttpServletRequest request){
        request.getSession().removeAttribute(Constant.USERSESSION);
        return "redirect:/login";
    }

    /**
     * 进入登录页面
     * */
    @RequestMapping(value = "/login")
    public String login(){
        return "login";
    }

    /**
     * 验证登录身份
     * */
    @RequestMapping(value = "/dologin")
    @ResponseBody
    public String dologin(User user,HttpServletRequest request){
        User u = userMapper.getUserByCode(user.getUserCode());
        if(null != u){
            if(u.getUserPassword().equals(user.getUserPassword())){
                request.getSession().setAttribute(Constant.USERSESSION,u);
                return "exist";
            }
        }
        return "noexist";
    }

    /**
     * 首页
     * */
    @RequestMapping(value = "/index")
    public String index(Model model){
        return "index";
    }

}
