package com.free4lab.babycheckup.model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Date;

/**
 * 骨碱酶
 */
@Entity
@Table(name = "result_urine", schema = "babycheckup", catalog = "")
public class ResultUrine {
    private int id;
    private int testId;
    private int hosId;
    private int babyId;
    private Timestamp time;
    private int userId;
    private String state;
    /**
     * 文件地址
     */
    private String urineImgUrl;
    /**
     * 备注
     */
    private String remark;

    // 创建人
    private String createUser;

    // 创建时间
    private Date createTime;

    // 修改人
    private String updateUser;

    // 修改时间
    private Date updateTime;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "test_id", nullable = false)
    public int getTestId() {
        return testId;
    }

    public void setTestId(int testId) {
        this.testId = testId;
    }

    @Basic
    @Column(name = "hos_id", nullable = false)
    public int getHosId() {
        return hosId;
    }

    public void setHosId(int hosId) {
        this.hosId = hosId;
    }

    @Basic
    @Column(name = "baby_id", nullable = false)
    public int getBabyId() {
        return babyId;
    }

    public void setBabyId(int babyId) {
        this.babyId = babyId;
    }

    @Basic
    @Column(name = "state", nullable = true, length = 20)
    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Basic
    @Column(name = "time", nullable = false)
    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    @Basic
    @Column(name = "user_id", nullable = false)
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "urine_img_url")
    public String getUrineImgUrl() {
        return urineImgUrl;
    }

    public void setUrineImgUrl(String urineImgUrl) {
        this.urineImgUrl = urineImgUrl;
    }

    @Basic
    @Column(name = "remark")
    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Basic
    @Column(name = "create_user", nullable = false)
    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    @Basic
    @Column(name = "create_time", nullable = false)
    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Basic
    @Column(name = "update_user", nullable = false)
    public String getUpdateUser() {
        return updateUser;
    }

    public void setUpdateUser(String updateUser) {
        this.updateUser = updateUser;
    }

    @Basic
    @Column(name = "update_time", nullable = false)
    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

}
