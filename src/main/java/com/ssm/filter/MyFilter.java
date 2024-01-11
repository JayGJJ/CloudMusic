package com.ssm.filter;

import com.ssm.pojo.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


//过滤器
@WebFilter("*.jsp")
public class MyFilter implements Filter {
    private static List<String> adminAuths = new ArrayList<String>();

    static {
        adminAuths.add("/index.jsp");
        adminAuths.add("/main.jsp");
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("init...");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("doFilter...");
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpSession session = request.getSession(true);
        String uri = request.getRequestURI();
        uri = uri.substring(uri.lastIndexOf("/"));
        if (adminAuths.contains(uri)) {
            User user = (User) session.getAttribute("user");
            if (user == null) {
                request.setAttribute("msg", "您还未登录,请先登录！");
                request.getRequestDispatcher("/index.jsp").forward(request, servletResponse);
            } else {
                filterChain.doFilter(request, servletResponse);
            }
        } else {
            filterChain.doFilter(request, servletResponse);
        }
    }

    @Override
    public void destroy() {
        System.out.println("destroy...");
    }
}
