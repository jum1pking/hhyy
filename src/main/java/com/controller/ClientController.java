package com.controller;


import com.alibaba.fastjson2.JSONObject;
import com.pojo.FirstKind;
import com.pojo.Jobs;
import com.pojo.SecondKind;
import com.pojo.ThirdKind;
import com.service.ClientService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Slf4j
@Controller
@RequestMapping("/client")
public class ClientController {
    @Resource
    private ClientService clientService;

    @GetMapping(value = "/firstKindList",produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String firstKindList(){
        List<FirstKind> firstKindList =  clientService.firstKindList();
        String json =JSONObject.toJSONString(firstKindList);
        return json;
    }

    @GetMapping(value = "/firstAdd")
    @ResponseBody
    public void firstKindAdd(String first_kind_id,
                             String first_kind_name,
                             String first_kind_salary_id,
                             String first_kind_sale_id){
        FirstKind firstKind=new FirstKind(0,first_kind_id,first_kind_name,first_kind_salary_id,first_kind_sale_id);
        clientService.firstKindAdd(firstKind);
    }

    @GetMapping("/removeFirstKind")
    @ResponseBody
    public void removeFirstKind(int ffk_id){
        clientService.removeFitstKind(ffk_id);
    }

    @GetMapping(value = "/firstChange")
    @ResponseBody
    public void firstKindChange(int ffk_id,
                             String first_kind_id,
                             String first_kind_name,
                             String first_kind_salary_id,
                             String first_kind_sale_id){
        FirstKind firstKind=new FirstKind(ffk_id,first_kind_id,first_kind_name,first_kind_salary_id,first_kind_sale_id);
        clientService.firstKindChange(firstKind);
    }

    @GetMapping(value = "/secondKindList",produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String secondKindList(){
        List<SecondKind> secondKindList =  clientService.secondKindList();
        String json =JSONObject.toJSONString(secondKindList);
        return json;
    }

    @GetMapping(value = "/secondAdd")
    @ResponseBody
    public void secondKindAdd(String first_kind_id,
                              String first_kind_name,
                              String second_kind_id,
                              String second_kind_name,
                              String second_salary_id,
                              String second_sale_id){
        SecondKind secondKind =new SecondKind(0,first_kind_id,first_kind_name,second_kind_id,second_kind_name,second_salary_id,second_sale_id);
        clientService.secondKindAdd(secondKind);
    }

    @GetMapping("/removeSecondKind")
    @ResponseBody
    public void removeSecondKind(int fsk_id){
        clientService.removeSecondKind(fsk_id);
    }

    @GetMapping(value = "/secondChange")
    @ResponseBody
    public void secondKindChange(int fsk_id,
                              String first_kind_id,
                              String first_kind_name,
                              String second_kind_id,
                              String second_kind_name,
                              String second_salary_id,
                              String second_sale_id){
        SecondKind secondKind =new SecondKind(fsk_id,first_kind_id,first_kind_name,second_kind_id,second_kind_name,second_salary_id,second_sale_id);
        clientService.secondKindChange(secondKind);
    }

    @GetMapping(value = "/thirdKindList",produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String thirdKindList(){
        List<ThirdKind> thirdKindList =  clientService.thirdKindList();
        String json =JSONObject.toJSONString(thirdKindList);
        return json;
    }

    @GetMapping(value = "/thirdAdd")
    @ResponseBody
    public void thirdKindAdd(String first_kind_id,
                             String first_kind_name,
                             String second_kind_id,
                             String second_kind_name,
                             String third_kind_id,
                             String third_kind_name,
                             String third_kind_sale_id,
                             String third_kind_is_retail){
        ThirdKind thirdKind = new ThirdKind(0,first_kind_id,first_kind_name,second_kind_id,second_kind_name,third_kind_id,third_kind_name,third_kind_sale_id,third_kind_is_retail);
        clientService.thirdKindAdd(thirdKind);
    }

    @GetMapping("/removeThirdKind")
    @ResponseBody
    public void removeThirdKind(int ftk_id){clientService.removeThirdKind(ftk_id);}

    @GetMapping(value = "/thirdChange")
    @ResponseBody
    public void thirdKindChange(int ftk_id,
                             String first_kind_id,
                             String first_kind_name,
                             String second_kind_id,
                             String second_kind_name,
                             String third_kind_id,
                             String third_kind_name,
                             String third_kind_sale_id,
                             String third_kind_is_retail){
        ThirdKind thirdKind = new ThirdKind(ftk_id,first_kind_id,first_kind_name,second_kind_id,second_kind_name,third_kind_id,third_kind_name,third_kind_sale_id,third_kind_is_retail);
        clientService.thirdKindChange(thirdKind);
    }

    //option
    @GetMapping(value = "/getFirstKindName", produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String getFirstKind(){
        List<FirstKind> FirstKindName = clientService.getFirstKindName();
        String json = JSONObject.toJSONString(FirstKindName);
        return json;
    }

    @GetMapping(value = "/getSecondKindName", produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String getSecondKind(){
        List<SecondKind> SecondKindName = clientService.getSecondKindName();
        String json = JSONObject.toJSONString(SecondKindName);
        return json;
    }

    //majorKind
    @GetMapping(value ="/majorKindList",produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String majorKindList(){
        List<Jobs> majorKind = clientService.majorKindList();
        String json = JSONObject.toJSONString(majorKind);
        return json;
    }

    @GetMapping("/majorKindAdd")
    @ResponseBody
    public void majorKindAdd(String major_kind_id,String major_kind_name){
        clientService.majorKindAdd(major_kind_id,major_kind_name);
    }

    @GetMapping("/removeMajorKind")
    @ResponseBody
    public void removeMajorKind(int mak_id){
        clientService.removeMajorKind(mak_id);
    }

    @GetMapping(value = "/majorKindChange")
    @ResponseBody
    public void majorKindChange(int mak_id,String major_kind_id,String major_kind_name){
        clientService.majorKindChange(mak_id,major_kind_id,major_kind_name);
    }

    //salary
    @GetMapping(value = "/listSalary",produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String salaryList(){
        List<String> salarySuppot = clientService.salaryList();
        String json = JSONObject.toJSONString(salarySuppot);
        return json;
    }

    @GetMapping(value = "/addManage",produces = "application/json;charset=UTF-8")
    @ResponseBody
    public void addManage(String s){
        clientService.addManage(s);
    }

    @GetMapping(value = "/changeManage",produces = "application/json;charset=UTF-8")
    @ResponseBody
    public void changeManage(String s,String s1){
        clientService.changeManage(s,s1);
    }

    @GetMapping(value = "/removeManage",produces = "application/json;charset=UTF-8")
    @ResponseBody
    public void removeManage(String s) {
        clientService.removeManage(s);
    }

    @GetMapping(value = "/addMethod",produces = "application/json;charset=UTF-8")
    @ResponseBody
    public void addMethod(String s){
        clientService.addMethod(s);
    }

    @GetMapping(value = "/changeMethod",produces = "application/json;charset=UTF-8")
    @ResponseBody
    public void changeMethod(String s,String s1){
        clientService.changeMethod(s,s1);
    }

    @GetMapping(value = "/removeMethod",produces = "application/json;charset=UTF-8")
    @ResponseBody
    public void removeMethod(String s) {
        clientService.removeMethod(s);
    }
}
