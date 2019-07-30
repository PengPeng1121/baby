package com.free4lab.babycheckup.dto;

import java.sql.Date;

//修改儿童的dto
public class BabyUpdateDto {

    /**
     * 孩子的Id
     */
    private Integer babyId;

    /**
     * 孩子的性别
     */
    private Integer babyGender;

    /**
     * 孩子的名字
     */
    private String babyName;

    /**
     * 页面选择的提交医生
     */
    private Integer doctorId;

    /**
     * 孩子民族
     */
    private String babyNation;

    /**
     * 分娩方式
     */
    private String babyDelivery;

    /**
     * 孩子出生日期
     */
    private Date babyBirth;

    /**
     * 孩子父亲名称
     */
    private String fatherName;

    /**
     * 孩子父亲职业
     */
    private String fatherCareer;

    /**
     * 孩子父亲电话
     */
    private String fatherTel;

    /**
     * 孩子父亲受教育程度
     */
    private String fatherEducation;

    /**
     * 孩子父亲工作时间
     */
    private Integer fatherWorkTime;

    /**
     * 孩子父亲生日
     */
    private Date fatherBirth;

    /**
     * 孩子父亲邮箱
     */
    private String fatherEmail;

    /**
     * 孩子母亲姓名
     */
    private String motherName;

    /**
     * 孩子母亲职业
     */
    private String motherCarrer;

    /**
     * 孩子母亲受教育程度
     */
    private String motherEducation;

    /**
     * 孩子母亲电话
     */
    private String motherTel;

    /**
     * 孩子母亲工作时长
     */
    private Integer motherWorkTime;

    /**
     * 孩子母亲生日
     */
    private Date motherBirth;

    /**
     * 孩子母亲邮箱
     */
    private String motherEmail;

    public Integer getBabyId() {
        return babyId;
    }

    public void setBabyId(Integer babyId) {
        this.babyId = babyId;
    }

    public Integer getBabyGender() {
        return babyGender;
    }

    public void setBabyGender(Integer babyGender) {
        this.babyGender = babyGender;
    }

    public String getBabyName() {
        return babyName;
    }

    public void setBabyName(String babyName) {
        this.babyName = babyName;
    }

    public Integer getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(Integer doctorId) {
        this.doctorId = doctorId;
    }

    public String getBabyNation() {
        return babyNation;
    }

    public void setBabyNation(String babyNation) {
        this.babyNation = babyNation;
    }

    public String getBabyDelivery() {
        return babyDelivery;
    }

    public void setBabyDelivery(String babyDelivery) {
        this.babyDelivery = babyDelivery;
    }

    public Date getBabyBirth() {
        return babyBirth;
    }

    public void setBabyBirth(Date babyBirth) {
        this.babyBirth = babyBirth;
    }

    public String getFatherName() {
        return fatherName;
    }

    public void setFatherName(String fatherName) {
        this.fatherName = fatherName;
    }

    public String getFatherCareer() {
        return fatherCareer;
    }

    public void setFatherCareer(String fatherCareer) {
        this.fatherCareer = fatherCareer;
    }

    public String getFatherTel() {
        return fatherTel;
    }

    public void setFatherTel(String fatherTel) {
        this.fatherTel = fatherTel;
    }

    public String getFatherEducation() {
        return fatherEducation;
    }

    public void setFatherEducation(String fatherEducation) {
        this.fatherEducation = fatherEducation;
    }

    public Integer getFatherWorkTime() {
        return fatherWorkTime;
    }

    public void setFatherWorkTime(Integer fatherWorkTime) {
        this.fatherWorkTime = fatherWorkTime;
    }

    public Date getFatherBirth() {
        return fatherBirth;
    }

    public void setFatherBirth(Date fatherBirth) {
        this.fatherBirth = fatherBirth;
    }

    public String getFatherEmail() {
        return fatherEmail;
    }

    public void setFatherEmail(String fatherEmail) {
        this.fatherEmail = fatherEmail;
    }

    public String getMotherName() {
        return motherName;
    }

    public void setMotherName(String motherName) {
        this.motherName = motherName;
    }

    public String getMotherCarrer() {
        return motherCarrer;
    }

    public void setMotherCarrer(String motherCarrer) {
        this.motherCarrer = motherCarrer;
    }

    public String getMotherEducation() {
        return motherEducation;
    }

    public void setMotherEducation(String motherEducation) {
        this.motherEducation = motherEducation;
    }

    public String getMotherTel() {
        return motherTel;
    }

    public void setMotherTel(String motherTel) {
        this.motherTel = motherTel;
    }

    public Integer getMotherWorkTime() {
        return motherWorkTime;
    }

    public void setMotherWorkTime(Integer motherWorkTime) {
        this.motherWorkTime = motherWorkTime;
    }

    public Date getMotherBirth() {
        return motherBirth;
    }

    public void setMotherBirth(Date motherBirth) {
        this.motherBirth = motherBirth;
    }

    public String getMotherEmail() {
        return motherEmail;
    }

    public void setMotherEmail(String motherEmail) {
        this.motherEmail = motherEmail;
    }

    @Override
    public String toString() {
        return "BabyUpdateDto{" +
                "babyId=" + babyId +
                ", babyGender=" + babyGender +
                ", babyName='" + babyName + '\'' +
                ", doctorId=" + doctorId +
                ", babyNation='" + babyNation + '\'' +
                ", babyDelivery='" + babyDelivery + '\'' +
                ", babyBirth=" + babyBirth +
                ", fatherName='" + fatherName + '\'' +
                ", fatherCareer='" + fatherCareer + '\'' +
                ", fatherTel='" + fatherTel + '\'' +
                ", fatherEducation='" + fatherEducation + '\'' +
                ", fatherWorkTime=" + fatherWorkTime +
                ", fatherBirth=" + fatherBirth +
                ", fatherEmail='" + fatherEmail + '\'' +
                ", motherName='" + motherName + '\'' +
                ", motherCarrer='" + motherCarrer + '\'' +
                ", motherEducation='" + motherEducation + '\'' +
                ", motherTel='" + motherTel + '\'' +
                ", motherWorkTime=" + motherWorkTime +
                ", motherBirth=" + motherBirth +
                ", motherEmail='" + motherEmail + '\'' +
                '}';
    }
}
