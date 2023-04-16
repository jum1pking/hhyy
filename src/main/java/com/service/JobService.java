package com.service;

import com.pojo.Jobs;

import java.util.List;

public interface JobService {
    List<Jobs> jobsList();

    List<String> getJobsName();

    void addJob(Jobs job);

    void removeJob(int id);

    Jobs checkJobLimit(int id);

    Jobs getJobById(int id);

    Jobs getJobByMajor_name(String major_name);

    void changeJob(Jobs job);
}
