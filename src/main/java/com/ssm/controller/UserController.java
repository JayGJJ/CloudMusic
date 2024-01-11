package com.ssm.controller;

import com.ssm.pojo.User;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;


@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    public String login(User user, Model model, HttpSession session) {
        user = userService.login(user);
        if (user != null) {
            model.addAttribute("user", user);
            session.setAttribute("user", user);  //可以不用session.setAttribute("user",user);
            return "forward:findSingerRandom";
        } else {
            model.addAttribute("msg", "请核对用户名和密码后再试");
            return "index.jsp";
        }
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "index.jsp";
    }

    //注册新用户
    @RequestMapping("register")
    public String register(User user, Model model) {
        userService.register(user);
        model.addAttribute("msg", "注册成功，请登录");
        return "index.jsp";
    }
}
