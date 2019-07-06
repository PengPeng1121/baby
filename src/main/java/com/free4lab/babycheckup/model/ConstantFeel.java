package com.free4lab.babycheckup.model;


import javax.persistence.*;
import java.io.Serializable;

/**
 * who肥胖基础信息表Domain
 * User: dabai
 * Date: 2019-01-22
 * To change this template use File | Settings | File Templates.
 **/
@Entity
@Table(name="constant_feel" ,schema = "babycheckup", catalog = "")
public class ConstantFeel implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    private Integer id;
    /**
     * 标准分
     */
    private Integer standardScore;
    /**
     * 前庭失衡原始分
     */
    private Integer originalVestibuleScore;
    /**
     * 触觉防御原始分
     */
    private Integer originalTouchScore;
    /**
     * 本体感原始分
     */
    private Integer originalBodyScore;
    /**
     * 学习能力原始分
     */
    private Integer originalLearnScore;
    /**
     * 前庭失衡原始分
     */
    private Integer monthRange;

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
    @Column(name = "standard_score", nullable = false)
    public Integer getStandardScore() {
        return standardScore;
    }

    public void setStandardScore(Integer standardScore) {
        this.standardScore = standardScore;
    }

    @Basic
    @Column(name = "original_vestibule_score", nullable = false)
    public Integer getOriginalVestibuleScore() {
        return originalVestibuleScore;
    }

    public void setOriginalVestibuleScore(Integer originalVestibuleScore) {
        this.originalVestibuleScore = originalVestibuleScore;
    }

    @Basic
    @Column(name = "original_touch_score", nullable = false)
    public Integer getOriginalTouchScore() {
        return originalTouchScore;
    }

    public void setOriginalTouchScore(Integer originalTouchScore) {
        this.originalTouchScore = originalTouchScore;
    }

    @Basic
    @Column(name = "original_body_score", nullable = false)
    public Integer getOriginalBodyScore() {
        return originalBodyScore;
    }

    public void setOriginalBodyScore(Integer originalBodyScore) {
        this.originalBodyScore = originalBodyScore;
    }

    @Basic
    @Column(name = "original_learn_score", nullable = false)
    public Integer getOriginalLearnScore() {
        return originalLearnScore;
    }

    public void setOriginalLearnScore(Integer originalLearnScore) {
        this.originalLearnScore = originalLearnScore;
    }

    @Basic
    @Column(name = "month_range", nullable = false)
    public Integer getMonthRange() {
        return monthRange;
    }

    public void setMonthRange(Integer monthRange) {
        this.monthRange = monthRange;
    }
}
