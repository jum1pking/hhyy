package com.service;

import com.pojo.FirstKind;
import com.pojo.Jobs;
import com.pojo.SecondKind;
import com.pojo.ThirdKind;

import java.util.List;

public interface ClientService {

    List<FirstKind> getFirstKindName();

    List<SecondKind> getSecondKindName();

    List<FirstKind> firstKindList();

    List<SecondKind> secondKindList();

    List<ThirdKind> thirdKindList();

    void firstKindAdd(FirstKind firstKind);

    void secondKindAdd(SecondKind secondKind);

    void thirdKindAdd(ThirdKind thirdKind);

    void removeFitstKind(int ffk_id);

    void removeSecondKind(int fsk_id);

    void removeThirdKind(int ftk_id);


    FirstKind getFirstKindById(int ffk_id);

    SecondKind getSecondKindById(int fsk_id);

    ThirdKind getThirdKindById(int ftk_id);

    void firstKindChange(FirstKind firstKind);

    void secondKindChange(SecondKind secondKind);

    void thirdKindChange(ThirdKind thirdKind);

    List<String> salaryList();

    List<Jobs> majorKindList();

    void majorKindAdd(String major_kind_id, String major_kind_name);

    void removeMajorKind(int mak_id);

    void majorKindChange(int mak_id,String major_kind_id,String major_kind_name);


    void addManage(String s);

    void changeManage(String s,String s1);

    void removeManage(String s);
    void addMethod(String s);

    void changeMethod(String s,String s1);

    void removeMethod(String s);


}
