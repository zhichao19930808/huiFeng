package com.huifeng.controller;

import com.huifeng.pojo.UserEntity;
import com.huifeng.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/user")
@Controller
public class UserController {
    @Autowired
    private UserService userService;
    @RequestMapping("/register")
    public String register(Model model,UserEntity user) {
        System.out.println(user);
        userService.addUser(user);
        return "index";
    }
}
