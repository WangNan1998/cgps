package com.cgps.filter;

import com.cgps.pojo.User;
import com.cgps.util.Constant;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

//@WebFilter(filterName = "LoginFilter", value = {"/index","/index.jsp"})
public class LoginFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;
        String path = request.getContextPath();
        String basePath = request.getScheme() + "://"
                + request.getServerName() + ":" + request.getServerPort() + path + "/";
//        String url = request.getRequestURI();

        User user = (User) request.getSession().getAttribute(Constant.USERSESSION);
        if (null != user) {
            chain.doFilter(req, resp);
        } else {
            request.getSession().setAttribute("info","请先登录!");
            response.sendRedirect(basePath + "login");
        }

    }

    public void init(FilterConfig config) throws ServletException {
        System.out.println("登录过滤器启动");
    }

}
