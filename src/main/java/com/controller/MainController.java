package com.controller;


import com.pojo.Jobs;
import com.service.JobService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;


@Slf4j
@Controller
@RequestMapping({"/index"})
public class MainController {

    @Resource
    private JobService jobService;

    @GetMapping("/PLogin")
    public String PLogin(){return "login";}

    @GetMapping("/index")
    public String toPageIndex(String truename, String job, Model model){
        Jobs j =jobService.getJobByMajor_name(job);
        model.addAttribute("truename", truename);
        model.addAttribute("limit", j.getJlimit());
        return "page/index";
    }

    @GetMapping("/top")
    public String toPageTop(String truename, Model model){
        model.addAttribute("truename", truename);
        return "page/top";}

    @GetMapping("/main")
    public String toPageMain(){return "page/main";}


    //left中所有页面链接的返回
    @GetMapping("/left")
    public String toPageLeft(String limit, Model model){
        model.addAttribute("limit", limit);
        return "page/left";
    }
    @GetMapping("/PFirstKind")
    public String PFirstKind(){return "page/client/first_kind";}

    @GetMapping("/PSecondKind")
    public String PSecoundtKind(){return "page/client/second_kind";}

    @GetMapping("/PThirdKind")
    public String PThirdKind(){return "page/client/third_kind";}

    @GetMapping("/PProfessionDesign")
    public String PProfessionDesign(){return "page/client/profession_design";}

    @GetMapping("/PMajorKind")
    public String PMajorKind(){return "page/client/major_kind";}

    @GetMapping("/PSalaryItem")
    public String PSalaryItem(){return "page/client/salary_item";}

    @GetMapping("/userList")
    public String toPageUserList(){return "/page/power/user_list";}

    @GetMapping("/jobList")
    public String toPageJobList(){return "/page/power/job_list";}
}


