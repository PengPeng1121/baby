package com.free4lab.babycheckup.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "test_instruction", schema = "babycheckup", catalog = "")
public class TestInstruction {
    /**
     * 主键
     */
    private Integer id;
    /**
     * 医院id
     */
    private Integer testId;
    /**
     * 医院名称
     */
    private String testName;
    /**
     * 测试题目类型
     */
    private Integer type;
    /**
     * 指导语内容
     */
    private String content;
    /**
     * 指导语内容
     */
    private String contentDetail1;
    /**
     * 指导语内容
     */
    private String contentDetail2;
    /**
     * 指导语内容
     */
    private String contentDetail3;
    /**
     * 指导语内容
     */
    private String contentDetail4;
    /**
     * 月龄
     */
    private Integer monthAge;
    // 备注
    private String remark;

    // 创建人
    private String createUser;

    // 创建时间
    private Date createTime;

    // 修改人
    private String updateUser;

    // 修改时间
    private Date updateTime;

    // 数据版本
    private String version;


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Basic
    @Column(name = "test_id", nullable = false)
    public Integer getTestId() {
        return testId;
    }

    public void setTestId(Integer testId) {
        this.testId = testId;
    }

    @Basic
    @Column(name = "test_name", nullable = false)
    public String getTestName() {
        return testName;
    }

    public void setTestName(String testName) {
        this.testName = testName;
    }

    @Basic
    @Column(name = "type", nullable = false)
    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    @Basic
    @Column(name = "content", nullable = false)
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Basic
    @Column(name = "content_detail_1", nullable = false)
    public String getContentDetail1() {
        return contentDetail1;
    }

    public void setContentDetail1(String contentDetail1) {
        this.contentDetail1 = contentDetail1;
    }

    @Basic
    @Column(name = "content_detail_2", nullable = false)
    public String getContentDetail2() {
        return contentDetail2;
    }

    public void setContentDetail2(String contentDetail2) {
        this.contentDetail2 = contentDetail2;
    }

    @Basic
    @Column(name = "content_detail_3", nullable = false)
    public String getContentDetail3() {
        return contentDetail3;
    }

    public void setContentDetail3(String contentDetail3) {
        this.contentDetail3 = contentDetail3;
    }

    @Basic
    @Column(name = "content_detail_4", nullable = false)
    public String getContentDetail4() {
        return contentDetail4;
    }

    public void setContentDetail4(String contentDetail4) {
        this.contentDetail4 = contentDetail4;
    }

    @Basic
    @Column(name = "month_age", nullable = false)
    public Integer getMonthAge() {
        return monthAge;
    }

    public void setMonthAge(Integer monthAge) {
        this.monthAge = monthAge;
    }

    @Basic
    @Column(name = "remark", nullable = false)
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

    @Basic
    @Column(name = "version", nullable = false)
    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }
}
