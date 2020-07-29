package com.free4lab.babycheckup.model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Date;

@Entity
@Table(name = "result_allergy", schema = "babycheckup")
public class ResultAllergy {
    private int id;
    private int testId;
    private int hosId;
    private int babyId;
    private Timestamp time;
    private int userId;
    private String state;
    /**
     * 是否眼圈发紫或指尖发白
     */
    private int r1;
    /**
     * 是否头发稀疏偏黄，头两侧缺少头发
     */
    private int r2;
    /**
     * 是否有荨麻疹、慢性湿疹、口水疹、尿布疹病史
     */
    private int r3;
    /**
     * 是否皮肤爱红、爱痒
     */
    private int r4;
    /**
     * 是否喜欢揉鼻子、揉眼睛、挠耳朵
     */
    private int r5;
    /**
     * 是否排便异常
     */
    private int r6;
    /**
     * 是否睡眠差、俯卧睡、经常腹痛
     */
    private int r7;
    /**
     * 是否无原因的反复咳嗽、流涕、打喷嚏、喘息
     */
    private int r8;
    /**
     * 是否偶尔有吐奶、厌奶、吃完食物出现呕吐及腹泻
     */
    private int r9;
    /**
     * 是否一段时间内体重不增，或体重异常增加
     */
    private int r10;
    /**
     * 是否身高体重增长缓慢
     */
    private int r11;
    /**
     * 是否食欲差、挤食、厌食厌奶
     */
    private int r12;
    /**
     * 是否有两种以上微量元素缺乏
     */
    private int r13;
    /**
     * 是否反复呼吸道感染
     */
    private int r14;
    /**
     * 是否嗓子呼噜声
     */
    private int r15;



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
    @Column(name = "r1", nullable = false)
    public int getR1() {
        return r1;
    }

    public void setR1(int r1) {
        this.r1 = r1;
    }

    @Basic
    @Column(name = "r2", nullable = false)
    public int getR2() {
        return r2;
    }

    public void setR2(int r2) {
        this.r2 = r2;
    }

    @Basic
    @Column(name = "r3", nullable = false)
    public int getR3() {
        return r3;
    }

    public void setR3(int r3) {
        this.r3 = r3;
    }
    @Basic
    @Column(name = "r4", nullable = false)
    public int getR4() {
        return r4;
    }

    public void setR4(int r4) {
        this.r4 = r4;
    }

    @Basic
    @Column(name = "r5", nullable = false)
    public int getR5() {
        return r5;
    }

    public void setR5(int r5) {
        this.r5 = r5;
    }

    @Basic
    @Column(name = "r6", nullable = false)
    public int getR6() {
        return r6;
    }

    public void setR6(int r6) {
        this.r6 = r6;
    }

    @Basic
    @Column(name = "r7", nullable = false)
    public int getR7() {
        return r7;
    }

    public void setR7(int r7) {
        this.r7 = r7;
    }

    @Basic
    @Column(name = "r8", nullable = false)
    public int getR8() {
        return r8;
    }

    public void setR8(int r8) {
        this.r8 = r8;
    }

    @Basic
    @Column(name = "r9", nullable = false)
    public int getR9() {
        return r9;
    }

    public void setR9(int r9) {
        this.r9 = r9;
    }
    @Basic
    @Column(name = "r10", nullable = false)
    public int getR10() {
        return r10;
    }

    public void setR10(int r10) {
        this.r10 = r10;
    }

    @Basic
    @Column(name = "r11", nullable = false)
    public int getR11() {
        return r11;
    }

    public void setR11(int r11) {
        this.r11 = r11;
    }

    @Basic
    @Column(name = "r12", nullable = false)
    public int getR12() {
        return r12;
    }

    public void setR12(int r12) {
        this.r12 = r12;
    }

    @Basic
    @Column(name = "r13", nullable = false)
    public int getR13() {
        return r13;
    }

    public void setR13(int r13) {
        this.r13 = r13;
    }

    @Basic
    @Column(name = "r14", nullable = false)
    public int getR14() {
        return r14;
    }

    public void setR14(int r14) {
        this.r14 = r14;
    }

    @Basic
    @Column(name = "r15", nullable = false)
    public int getR15() {
        return r15;
    }

    public void setR15(int r15) {
        this.r15 = r15;
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
