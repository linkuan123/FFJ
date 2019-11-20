package com.nwpu.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * 职位
 */
public class Job implements Serializable {

    private Integer id;
    private Integer companyId;  //对应公司
    private String jobName;     //工作名字
    private String jobNum;      //需要人数
    private String jobRequire;  //职业要求
    private String salary;      //薪水
    private String location;    //工作地点
    private String jobInfo;     //职位介绍
    private Date createTime;    //创建时间
    private String contact;     //联系方式

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Integer companyId) {
        this.companyId = companyId;
    }

    public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName;
    }

    public String getJobNum() {
        return jobNum;
    }

    public void setJobNum(String jobNum) {
        this.jobNum = jobNum;
    }

    public String getJobRequire() {
        return jobRequire;
    }

    public void setJobRequire(String jobRequire) {
        this.jobRequire = jobRequire;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getJobInfo() {
        return jobInfo;
    }

    public void setJobInfo(String jobInfo) {
        this.jobInfo = jobInfo;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    @Override
    public String toString() {
        return "Job{" +
                "id=" + id +
                ", companyId=" + companyId +
                ", jobName='" + jobName + '\'' +
                ", jobNum='" + jobNum + '\'' +
                ", jobRequire='" + jobRequire + '\'' +
                ", salary='" + salary + '\'' +
                ", location='" + location + '\'' +
                ", jobInfo='" + jobInfo + '\'' +
                ", createTime=" + createTime +
                ", contact='" + contact + '\'' +
                '}';
    }
}