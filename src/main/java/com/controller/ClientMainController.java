package com.controller;

import com.pojo.FirstKind;
import com.pojo.SecondKind;
import com.pojo.ThirdKind;
import com.service.ClientService;
import com.service.impl.ClientServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Slf4j
@Controller
@RequestMapping("/PClient")
public class ClientMainController {
    @Resource
    private ClientServiceImpl clientService;

    @GetMapping("/PFirstKindRegister")
    public String PFirstKindRegister(){return "page/client/first_kind_register";}

    @GetMapping("/PSecondKindRegister")
    public String PSecondKindRegister(){return "page/client/second_kind_register";}

    @GetMapping("/PThirdKindRegister")
    public String PThirdKindRegister(){return "page/client/third_kind_register";}

    @GetMapping("/PFirstKindChange")
    public String PFirstKindChange(int ffk_id, Model model){
        FirstKind firstKind = clientService.getFirstKindById(ffk_id);
        model.addAttribute("firstKind",firstKind);
        return "page/client/first_kind_change";
    }

    @GetMapping("/PSecondKindChange")
    public String PSecondKindChange(int fsk_id, Model model){
        SecondKind secondKind = clientService.getSecondKindById(fsk_id);
        model.addAttribute("secondKind",secondKind);
        return "page/client/second_kind_change";
    }

    @GetMapping("/PThirdKindChange")
    public String PThirdKindChange(int ftk_id, Model model){
        ThirdKind thirdKind = clientService.getThirdKindById(ftk_id);
        model.addAttribute("thirdKind",thirdKind);
        return "page/client/third_kind_change";
    }



}
