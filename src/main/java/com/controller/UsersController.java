package com.controller;

import com.alibaba.fastjson2.JSONObject;
import com.pojo.Users;
import com.service.UserService;
import lombok.Synchronized;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Objects;

@Slf4j
@Controller
@RequestMapping({"/user"})
public class UsersController {

    //page
    @Resource
    private UserService userService;

    @GetMapping("/PUserAdd")
    public String PaddUser(){return "page/power/user_add";}


    @GetMapping("/PUseredit")
    public String PUseredit(String uid, Model model){
        Users user = userService.findUserById(uid);
        model.addAttribute("user",user);
        return "page/power/user_edit";}

    @GetMapping("/PUserList")
    public String PUserList(){return "/page/power/user_list";}

    //json

    @GetMapping(value="/listUser",produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String toUserList(){
        List<Users> userslist = userService.usersList();
        String json = JSONObject.toJSONString(userslist);
        return json;
    }

    @GetMapping("/addUser")
    @ResponseBody
    public void addUser(String userName,String userPassword,String userTruename,String job){
        Users users = new Users("0",userName,userPassword,userTruename,job);
        userService.addUser(users);
    }

    @GetMapping(value="/changeUser")
    @ResponseBody
    @Synchronized
    public void changeUser(String uid,String userName,String userPassword,String userTruename,String job){
        Users users = new Users(uid,userName,userPassword,userTruename,job);
        userService.changeUser(users);
    }

    @GetMapping(value="/checkUser",produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String checkUser(String username, String userPassword, HttpServletRequest request,Model model){
        Users users = userService.checkUser(username,userPassword);
        HttpSession session = request.getSession();
        String json = JSONObject.toJSONString(users);
        if (Objects.nonNull(users)) {
            session.setAttribute("users", users);
        }
        return json;
    }

    @GetMapping(value = "/removeUser")
    @ResponseBody
    public void removeUser(int uid){
        userService.removeUser(uid);
    }
}
