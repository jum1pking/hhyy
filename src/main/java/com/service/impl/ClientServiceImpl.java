package com.service.impl;

import com.mapper.ClientMapper;
import com.pojo.FirstKind;
import com.pojo.Jobs;
import com.pojo.SecondKind;
import com.pojo.ThirdKind;
import com.service.ClientService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class ClientServiceImpl implements ClientService {

    @Resource
    ClientMapper clientMapper;

    @Override
    public List<FirstKind> getFirstKindName() {
        return clientMapper.getFirstKindName();
    }

    @Override
    public List<SecondKind> getSecondKindName() {
        return clientMapper.getSecondKindName();
    }

    @Override
    public List<FirstKind> firstKindList() {
        return clientMapper.firstKindList();
    }

    @Override
    public List<SecondKind> secondKindList() {
        return clientMapper.secondKindList();
    }

    @Override
    public List<ThirdKind> thirdKindList() {
        return clientMapper.thirdKindList();
    }

    @Override
    public void firstKindAdd(FirstKind firstKind) {
        clientMapper.firstKindAdd(firstKind);
    }

    @Override
    public void secondKindAdd(SecondKind secondKind){ clientMapper.secondKindAdd(secondKind); }

    @Override
    public void thirdKindAdd(ThirdKind thirdKind) {
        clientMapper.thirdKindAdd(thirdKind);
    }

    @Override
    public void removeFitstKind(int ffk_id) {clientMapper.firstKindRemove(ffk_id);}

    @Override
    public void removeSecondKind(int fsk_id) {clientMapper.secondKindRemove(fsk_id);}

    @Override
    public void removeThirdKind(int ftk_id) {clientMapper.thirdKindRemove(ftk_id);}

    @Override
    public FirstKind getFirstKindById(int ffk_id) {
        return clientMapper.getFirstKindById(ffk_id);
    }

    @Override
    public SecondKind getSecondKindById(int fsk_id) {
        return clientMapper.getSecondKindById(fsk_id);
    }

    @Override
    public ThirdKind getThirdKindById(int ftk_id) {
        return clientMapper.getThirdKindById(ftk_id);
    }

    @Override
    public void firstKindChange(FirstKind firstKind) {
        clientMapper.firstKindChange(firstKind);
    }

    @Override
    public void secondKindChange(SecondKind secondKind) {
        clientMapper.secondKindChange(secondKind);
    }

    @Override
    public void thirdKindChange(ThirdKind thirdKind) {
        clientMapper.thirdKindChange(thirdKind);
    }

    @Override
    public List<Jobs> majorKindList() {
        return clientMapper.majorKindList();
    }

    @Override
    public  void majorKindAdd(String major_kind_id, String major_kind_name) {
        clientMapper.majorKindAdd(major_kind_id,major_kind_name);
    }

    @Override
    public void removeMajorKind(int mak_id) {
        clientMapper.removeMajorKind(mak_id);
    }

    @Override
    public void majorKindChange(int mak_id,String major_kind_id, String major_kind_name) {
        clientMapper.majorKindChange(mak_id,major_kind_id,major_kind_name);
    }

    @Override
    public void addManage(String s) {
        clientMapper.addManage(s);
    }

    @Override
    public void changeManage(String s,String s1) {
        clientMapper.changeManage(s,s1);
    }

    @Override
    public void removeManage(String s) {
        clientMapper.removeManage(s);
    }

    @Override
    public void addMethod(String s) {
        clientMapper.addMethod(s);
    }

    @Override
    public void changeMethod(String s,String s1) {
        clientMapper.changeMethod(s,s1);
    }

    @Override
    public void removeMethod(String s) {
        clientMapper.removeMethod(s);
    }

    @Override
    public List<String> salaryList() {
        List<String> salaryList = new ArrayList<>(clientMapper.salaryManageName());
        salaryList.add("114514");
        salaryList.addAll(clientMapper.SalaryPayMethod());
        return salaryList;
    }


}
