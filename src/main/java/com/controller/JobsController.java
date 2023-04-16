package com.controller;


import com.alibaba.fastjson2.JSONObject;
import com.pojo.Jobs;
import com.service.JobService;
import lombok.Synchronized;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Slf4j
@Controller
@RequestMapping({"/jobs"})
public class JobsController {

    @Resource
    private JobService jobService;

    //page
    @GetMapping("/PJobAdd")
    public String PaddJob(){return "page/power/job_add";}

    @GetMapping("/PJobList")
    public String PUserList(){return "page/power/job_list";}

    @GetMapping(value="/PjobLimit",produces = "application/json;charset=UTF-8")
    public String PjobLimit(int id,Model model){
        Jobs job = jobService.checkJobLimit(id);
        model.addAttribute("job",job);
        return "page/power/joblist_information";
    }

    //json
    @GetMapping(value = "/jobsList", produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String toJobsList(){
        List<Jobs> jobslist = jobService.jobsList();
        String json = JSONObject.toJSONString(jobslist);
        return json;
    }

    @GetMapping(value = "/getJobsName", produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String getJobsName(){
        List<String> jobsName = jobService.getJobsName();
        String json = JSONObject.toJSONString(jobsName);
        return json;
    }

    @GetMapping(value = "/getJob", produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String getJob(int id){
        Jobs job = jobService.getJobById(id);
        String json = JSONObject.toJSONString(job);
        return json;
    }

    @GetMapping(value = "/addJob", produces = "application/json;charset=UTF-8")
    @ResponseBody
    public void saveJob(String jobName,String major_kind_name,String explain){
        Jobs job = new Jobs("0",null,major_kind_name,null,jobName,null,explain);
        jobService.addJob(job);
    }


    @GetMapping(value = "/removeJob")
    @ResponseBody
    public void removeUser(int id){
        jobService.removeJob(id);
    }

    @GetMapping(value = "/changeJob")
    @ResponseBody
    @Synchronized
    public void changeJob(String mak_id, String major_kind_id,
                   String major_kind_name, String major_id,
                   String major_name, String Jlimit, String Jexplain){
        Jobs job = new Jobs(mak_id,major_kind_id,major_kind_name,major_id,major_name,Jlimit,Jexplain);
        jobService.changeJob(job);
    }
}


