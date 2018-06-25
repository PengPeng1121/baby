package com.free4lab.babycheckup.model;

import javax.persistence.*;

/**
 * Created by asus on 2018/6/4.
 */
@Entity
@Table(name = "ddst_question", schema = "babycheckup")
public class DDSTQuestion {

    private int id;
    private String monthAge;//月龄
    private String type;//能区类型
    private String leftCode_1;//左1序号
    private String leftName_1;//左1题目
    private String leftCode_2;
    private String leftName_2;
    private String leftCode_3;
    private String leftName_3;
    private String throughCode_1;//切1序号
    private String throughName_1;//切1内容
    private String throughCode_2;
    private String throughName_2;
    private String throughCode_3;
    private String throughName_3;
    private String throughCode_4;
    private String throughName_4;
    private String throughCode_5;
    private String throughName_5;
    private String throughCode_6;
    private String throughName_6;
    private String throughCode_7;
    private String throughName_7;

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
    @Column(name = "month_age", nullable = false)
    public String getMonthAge() {
        return monthAge;
    }

    public void setMonthAge(String monthAge) {
        this.monthAge = monthAge;
    }

    @Basic
    @Column(name = "type", nullable = false)
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Basic
    @Column(name = "left_code_1", nullable = false)
    public String getLeftCode_1() {
        return leftCode_1;
    }

    public void setLeftCode_1(String leftCode_1) {
        this.leftCode_1 = leftCode_1;
    }

    @Basic
    @Column(name = "left_name_1", nullable = false)
    public String getLeftName_1() {
        return leftName_1;
    }

    public void setLeftName_1(String leftName_1) {
        this.leftName_1 = leftName_1;
    }

    @Basic
    @Column(name = "left_code_2", nullable = false)
    public String getLeftCode_2() {
        return leftCode_2;
    }

    public void setLeftCode_2(String leftCode_2) {
        this.leftCode_2 = leftCode_2;
    }

    @Basic
    @Column(name = "left_name_2", nullable = false)
    public String getLeftName_2() {
        return leftName_2;
    }

    public void setLeftName_2(String leftName_2) {
        this.leftName_2 = leftName_2;
    }

    @Basic
    @Column(name = "left_code_3", nullable = false)
    public String getLeftCode_3() {
        return leftCode_3;
    }

    public void setLeftCode_3(String leftCode_3) {
        this.leftCode_3 = leftCode_3;
    }

    @Basic
    @Column(name = "left_name_3", nullable = false)
    public String getLeftName_3() {
        return leftName_3;
    }

    public void setLeftName_3(String leftName_3) {
        this.leftName_3 = leftName_3;
    }

    @Basic
    @Column(name = "through_code_1", nullable = false)
    public String getThroughCode_1() {
        return throughCode_1;
    }

    public void setThroughCode_1(String throughCode_1) {
        this.throughCode_1 = throughCode_1;
    }

    @Basic
    @Column(name = "through_name_1", nullable = false)
    public String getThroughName_1() {
        return throughName_1;
    }

    public void setThroughName_1(String throughName_1) {
        this.throughName_1 = throughName_1;
    }

    @Basic
    @Column(name = "through_code_2", nullable = false)
    public String getThroughCode_2() {
        return throughCode_2;
    }

    public void setThroughCode_2(String throughCode_2) {
        this.throughCode_2 = throughCode_2;
    }

    @Basic
    @Column(name = "through_name_2", nullable = false)
    public String getThroughName_2() {
        return throughName_2;
    }

    public void setThroughName_2(String throughName_2) {
        this.throughName_2 = throughName_2;
    }

    @Basic
    @Column(name = "through_code_3", nullable = false)
    public String getThroughCode_3() {
        return throughCode_3;
    }

    public void setThroughCode_3(String throughCode_3) {
        this.throughCode_3 = throughCode_3;
    }

    @Basic
    @Column(name = "through_name_3", nullable = false)
    public String getThroughName_3() {
        return throughName_3;
    }

    public void setThroughName_3(String throughName_3) {
        this.throughName_3 = throughName_3;
    }

    @Basic
    @Column(name = "through_code_4", nullable = false)
    public String getThroughCode_4() {
        return throughCode_4;
    }

    public void setThroughCode_4(String throughCode_4) {
        this.throughCode_4 = throughCode_4;
    }

    @Basic
    @Column(name = "through_name_4", nullable = false)
    public String getThroughName_4() {
        return throughName_4;
    }

    public void setThroughName_4(String throughName_4) {
        this.throughName_4 = throughName_4;
    }

    @Basic
    @Column(name = "through_code_5", nullable = false)
    public String getThroughCode_5() {
        return throughCode_5;
    }

    public void setThroughCode_5(String throughCode_5) {
        this.throughCode_5 = throughCode_5;
    }

    @Basic
    @Column(name = "through_name_5", nullable = false)
    public String getThroughName_5() {
        return throughName_5;
    }

    public void setThroughName_5(String throughName_5) {
        this.throughName_5 = throughName_5;
    }

    @Basic
    @Column(name = "through_code_6", nullable = false)
    public String getThroughCode_6() {
        return throughCode_6;
    }

    public void setThroughCode_6(String throughCode_6) {
        this.throughCode_6 = throughCode_6;
    }

    @Basic
    @Column(name = "through_name_6", nullable = false)
    public String getThroughName_6() {
        return throughName_6;
    }

    public void setThroughName_6(String throughName_6) {
        this.throughName_6 = throughName_6;
    }

    @Basic
    @Column(name = "through_code_7", nullable = false)
    public String getThroughCode_7() {
        return throughCode_7;
    }

    public void setThroughCode_7(String throughCode_7) {
        this.throughCode_7 = throughCode_7;
    }

    @Basic
    @Column(name = "through_name_7", nullable = false)
    public String getThroughName_7() {
        return throughName_7;
    }

    public void setThroughName_7(String throughName_7) {
        this.throughName_7 = throughName_7;
    }
}
