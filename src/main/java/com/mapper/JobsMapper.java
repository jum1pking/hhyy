package com.mapper;

import com.pojo.Jobs;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface JobsMapper {

    @Insert("INSERT INTO config_major(mak_id,major_kind_id,major_kind_name,major_id,major_name,Jlimit,Jexplain) VALUES (#{mak_id},#{major_kind_id},#{major_kind_name},#{major_id},#{major_name},#{Jlimit},#{Jexplain})")
    void addJob(Jobs job);

    @Select("SELECT * FROM config_major")
    List<Jobs> listAllJobs();

    //option
    @Select("SELECT major_name FROM config_major ORDER BY major_kind_id")
    List<String> getJobsName();

    @Delete("DELETE FROM config_major WHERE mak_id=#{mak_id}")
    void removeJob(int mak_id);

    @Select("SELECT * FROM config_major WHERE mak_id=#{id}")
    Jobs checkJobLimit(int id);

    @Select("SELECT * FROM config_major WHERE mak_id=#{id}")
    Jobs getJobById(int id);

    @Select("SELECT * FROM config_major WHERE major_name=#{major_name}")
    Jobs getJobByMajor_name(String major_name);

    @Update("UPDATE config_major SET major_kind_id=#{major_kind_id},major_kind_name=#{major_kind_name},major_id=#{major_id},major_name=#{major_name},Jlimit=#{Jlimit},Jexplain=#{Jexplain} WHERE mak_id=#{mak_id} LIMIT 1")
    void changeJob(@Param("mak_id") int mak_id,@Param("major_kind_id") int major_kind_id,@Param("major_kind_name") String major_kind_name,@Param("major_id") int major_id,@Param("major_name") String major_name,@Param("Jlimit") String jlimit,@Param("Jexplain") String jexplain);
}
