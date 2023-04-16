package com.mapper;

import com.pojo.FirstKind;
import com.pojo.Jobs;
import com.pojo.SecondKind;
import com.pojo.ThirdKind;
import org.apache.ibatis.annotations.*;

import java.util.Collection;
import java.util.List;

@Mapper
public interface ClientMapper {

    @Select("SELECT * FROM config_file_first_kind")
    List<FirstKind> firstKindList();

    @Select("SELECT * FROM config_file_second_kind")
    List<SecondKind> secondKindList();

    @Select("SELECT * FROM config_file_third_kind")
    List<ThirdKind> thirdKindList();

    @Insert("INSERT INTO config_file_first_kind(ffk_id,first_kind_id,first_kind_name,first_kind_salary_id,first_kind_sale_id) VALUES (#{ffk_id},#{first_kind_id},#{first_kind_name},#{first_kind_salary_id},#{first_kind_sale_id})")
    void firstKindAdd(FirstKind firstKind);

    @Insert("INSERT INTO config_file_second_kind(fsk_id,first_kind_id,first_kind_name,second_kind_id,second_kind_name,second_salary_id,second_sale_id) VALUES (#{fsk_id},#{first_kind_id},#{first_kind_name},#{second_kind_id},#{second_kind_name},#{second_salary_id},#{second_sale_id})")
    void secondKindAdd(SecondKind secondKind);

    @Insert("INSERT INTO config_file_third_kind(ftk_id,first_kind_id,first_kind_name,second_kind_id,second_kind_name,third_kind_id,third_kind_name,third_kind_sale_id,third_kind_is_retail) VALUES (#{ftk_id},#{first_kind_id},#{first_kind_name},#{second_kind_id},#{second_kind_name},#{third_kind_id},#{third_kind_name},#{third_kind_sale_id},#{third_kind_is_retail})")
    void thirdKindAdd(ThirdKind thirdKind);

    @Select("SELECT first_kind_id,first_kind_name FROM config_file_first_kind")
    List<FirstKind> getFirstKindName();

    @Select("SELECT second_kind_id,second_kind_name FROM config_file_second_kind")
    List<SecondKind> getSecondKindName();

    @Delete("DELETE FROM config_file_first_kind WHERE ffk_id = #{ffk_id}")
    void firstKindRemove(int ffk_id);

    @Delete("DELETE FROM config_file_second_kind WHERE fsk_id = #{fsk_id}")
    void secondKindRemove(int fsk_id);

    @Delete("DELETE FROM config_file_third_kind WHERE ftk_id = #{ftk_id}")
    void thirdKindRemove(int ftk_id);

    @Select("SELECT * FROM config_file_first_kind where ffk_id=#{ffk_id}")
    FirstKind getFirstKindById(int ffk_id);

    @Select("SELECT * FROM config_file_second_kind where fsk_id=#{fsk_id}")
    SecondKind getSecondKindById(int fsk_id);

    @Select("SELECT * FROM config_file_third_kind where ftk_id=#{ftk_id}")
    ThirdKind getThirdKindById(int ftk_id);

    @Update("UPDATE config_file_first_kind SET first_kind_id=#{first_kind_id},first_kind_name=#{first_kind_name},first_kind_salary_id=#{first_kind_salary_id},first_kind_sale_id=#{first_kind_sale_id} WHERE ffk_id=#{ffk_id}")
    void firstKindChange(FirstKind firstKind);

    @Update("UPDATE config_file_second_kind SET first_kind_id=#{first_kind_id},first_kind_name=#{first_kind_name},second_kind_id=#{second_kind_id},second_kind_name=#{second_kind_name},second_salary_id=#{second_salary_id},second_sale_id=#{second_sale_id} WHERE fsk_id=#{fsk_id}")
    void secondKindChange(SecondKind secondKind);

    @Update("UPDATE config_file_third_kind SET first_kind_id=#{first_kind_id},first_kind_name=#{first_kind_name},second_kind_id=#{second_kind_id},second_kind_name=#{second_kind_name},third_kind_id=#{third_kind_id},third_kind_name=#{third_kind_name},third_kind_sale_id=#{third_kind_sale_id},third_kind_is_retail=#{third_kind_is_retail} WHERE ftk_id=#{ftk_id}")
    void thirdKindChange(ThirdKind thirdKind);

    @Select("SELECT * FROM config_major_kind")
    List<Jobs> majorKindList();

    @Insert("INSERT INTO config_major_kind(major_kind_id,major_kind_name) VALUES(#{major_kind_id},#{major_kind_name})")
    void majorKindAdd(@Param("major_kind_id") String major_kind_id, @Param("major_kind_name") String major_kind_name);

    @Delete("DELETE FROM config_major_kind WHERE mak_id=#{mak_id}")
    void removeMajorKind(int mak_id);

    @Update("UPDATE config_major_kind SET major_kind_id=#{major_kind_id},major_kind_name=#{major_kind_name} WHERE mak_id=#{mak_id}")
    void majorKindChange(@Param("mak_id") int mak_id,@Param("major_kind_id")String major_kind_id,@Param("major_kind_name")String major_kind_name);

    @Select("SELECT * FROM salary_manage_setting")
    List<String> salaryManageName();

    @Select("SELECT * FROM salary_payment_method")
    List<String> SalaryPayMethod();


    @Insert("INSERT INTO salary_manage_setting(salary_project_name) VALUES(#{s})")
    void addManage(String s);

    @Update("UPDATE salary_manage_setting SET salary_project_name=#{s} WHERE salary_project_name=#{s1} LIMIT 1")
    void changeManage(@Param("s")String s,@Param("s1")String s1);

    @Delete("DELETE FROM salary_manage_setting WHERE salary_project_name=#{s}")
    void removeManage(String s);

    @Insert("INSERT INTO salary_payment_method(payment_method) VALUES(#{s})")
    void addMethod(String s);

    @Update("UPDATE salary_payment_method SET payment_method=#{s} WHERE payment_method=#{s1} LIMIT 1")
    void changeMethod(@Param("s")String s,@Param("s1")String s1);

    @Delete("DELETE FROM salary_payment_method WHERE payment_method=#{s}")
    void removeMethod(String s);


}
