package com.service.impl;


import com.mapper.JobsMapper;
import com.pojo.Jobs;
import com.service.JobService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class JobsServiceImpl implements JobService {

    @Resource
    private JobsMapper JobsMapper;

    @Override
    public List<Jobs> jobsList() {
        return JobsMapper.listAllJobs();
    }

    @Override
    public List<String> getJobsName() {
        return JobsMapper.getJobsName();
    }

    @Override
    public void addJob(Jobs job) {JobsMapper.addJob(job);}

    @Override
    public void removeJob(int id) {
        JobsMapper.removeJob(id);
    }

    @Override
    public Jobs checkJobLimit(int id) {
        return JobsMapper.checkJobLimit(id);
    }

    @Override
    public Jobs getJobById(int id) {
        return JobsMapper.getJobById(id);
    }

    @Override
    public Jobs getJobByMajor_name(String major_name) {
        return JobsMapper.getJobByMajor_name(major_name);
    }

    @Override
    public void changeJob(Jobs job) {
        int mak_id=Integer.valueOf(job.getMak_id());
        int major_kind_id=Integer.valueOf(job.getMajor_kind_id());
        String major_kind_name = job.getMajor_kind_name();
        int major_id=Integer.valueOf(job.getMajor_kind_id());
        String major_name = job.getMajor_name();
        String Jlimit = job.getJlimit();
        String Jexplain = job.getJexplain();
        JobsMapper.changeJob(mak_id,major_kind_id,major_kind_name,major_id,major_name,Jlimit,Jexplain);

    }
}