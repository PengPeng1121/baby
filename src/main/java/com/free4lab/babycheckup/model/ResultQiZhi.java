package com.free4lab.babycheckup.model;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by Administrator on 2017/7/12.
 */

@Entity
@Table(name = "resultQiZhi", schema = "babycheckup")
public class ResultQiZhi {
    private int id;
    private int testId;
    private int babyId;
    private Timestamp time;
    private int hosId;
    private int userId;
    private String state;
    private String answerRelation;//答题者与儿童关系
    private String a1;
    private String a2;
    private String a3;
    private String a4;
    private String a5;
    private String a6;
    private String a7;
    private String a8;
    private String a9;

    private String z1;
    private String z2;
    private String z3;
    private String z4;
    private String z5;
    private String z6;
    private String z7;
    private String z8;
    private String z9;

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
    @Column(name = "baby_id", nullable = false)
    public int getBabyId() {
        return babyId;
    }

    public void setBabyId(int babyId) {
        this.babyId = babyId;
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
    @Column(name = "hos_id", nullable = false)
    public int getHosId() {
        return hosId;
    }

    public void setHosId(int hosId) {
        this.hosId = hosId;
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
    @Column(name = "state", nullable = true, length = 20)
    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Basic
    @Column(name = "a1", nullable = false)
    public String getA1() {
        return a1;
    }

    public void setA1(String a1) {
        this.a1 = a1;
    }

    @Basic
    @Column(name = "a2", nullable = false)
    public String getA2() {
        return a2;
    }

    public void setA2(String a2) {
        this.a2 = a2;
    }

    @Basic
    @Column(name = "a3", nullable = false)
    public String getA3() {
        return a3;
    }

    public void setA3(String a3) {
        this.a3 = a3;
    }

    @Basic
    @Column(name = "a4", nullable = false)
    public String getA4() {
        return a4;
    }

    public void setA4(String a4) {
        this.a4 = a4;
    }

    @Basic
    @Column(name = "a5", nullable = false)
    public String getA5() {
        return a5;
    }

    public void setA5(String a5) {
        this.a5 = a5;
    }

    @Basic
    @Column(name = "a6", nullable = false)
    public String getA6() {
        return a6;
    }

    public void setA6(String a6) {
        this.a6 = a6;
    }

    @Basic
    @Column(name = "a7", nullable = false)
    public String getA7() {
        return a7;
    }

    public void setA7(String a7) {
        this.a7 = a7;
    }

    @Basic
    @Column(name = "a8", nullable = false)
    public String getA8() {
        return a8;
    }

    public void setA8(String a8) {
        this.a8 = a8;
    }

    @Basic
    @Column(name = "a9", nullable = false)
    public String getA9() {
        return a9;
    }

    public void setA9(String a9) {
        this.a9 = a9;
    }

    @Basic
    @Column(name = "answer_relation", nullable = false)
    public String getAnswerRelation() {
        return answerRelation;
    }

    public void setAnswerRelation(String answerRelation) {
        this.answerRelation = answerRelation;
    }

    @Basic
    @Column(name = "z1", nullable = false)
    public String getZ1() {
        return z1;
    }

    public void setZ1(String z1) {
        this.z1 = z1;
    }

    @Basic
    @Column(name = "z2", nullable = false)
    public String getZ2() {
        return z2;
    }

    public void setZ2(String z2) {
        this.z2 = z2;
    }

    @Basic
    @Column(name = "z3", nullable = false)
    public String getZ3() {
        return z3;
    }

    public void setZ3(String z3) {
        this.z3 = z3;
    }

    @Basic
    @Column(name = "z4", nullable = false)
    public String getZ4() {
        return z4;
    }

    public void setZ4(String z4) {
        this.z4 = z4;
    }

    @Basic
    @Column(name = "z5", nullable = false)
    public String getZ5() {
        return z5;
    }

    public void setZ5(String z5) {
        this.z5 = z5;
    }

    @Basic
    @Column(name = "z6", nullable = false)
    public String getZ6() {
        return z6;
    }

    public void setZ6(String z6) {
        this.z6 = z6;
    }

    @Basic
    @Column(name = "z7", nullable = false)
    public String getZ7() {
        return z7;
    }

    public void setZ7(String z7) {
        this.z7 = z7;
    }

    @Basic
    @Column(name = "z8", nullable = false)
    public String getZ8() {
        return z8;
    }

    public void setZ8(String z8) {
        this.z8 = z8;
    }

    @Basic
    @Column(name = "z9", nullable = false)
    public String getZ9() {
        return z9;
    }

    public void setZ9(String z9) {
        this.z9 = z9;
    }

    private Baby baby;

    @Transient
    public Baby getBaby() {
        return baby;
    }
    public void setBaby(Baby baby) {
        this.baby = baby;
    }
}
