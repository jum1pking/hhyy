package com.web.filter;


import com.pojo.Users;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/*")
public class PremissionFiter implements Filter {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
//        System.out.println("--------------------FILTER------------------");
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpSession session = request.getSession();
        Users users = (Users) session.getAttribute("users");
        String uri = request.getRequestURI();
        if (users==null){
            if (uri.endsWith("/page/login.jsp")||uri.endsWith("/checkUser")
                    ||uri.endsWith(".js")||uri.endsWith(".css")
                    |uri.endsWith(".jpg")||uri.endsWith(".gif")){
                filterChain.doFilter(request,response);
            }else {
                response.sendRedirect(request.getContextPath()+"/page/login.jsp");
            }
        }else{
            filterChain.doFilter(request,response);
        }

    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}
