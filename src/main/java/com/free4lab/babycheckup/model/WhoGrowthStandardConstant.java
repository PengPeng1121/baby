package com.free4lab.babycheckup.model;

import javax.persistence.*;
import java.io.Serializable;

/**
 * 成长发育基本数据信息表Domain 2020版
 * User: dabai
 * Date: 2020-07-18
 * To change this template use File | Settings | File Templates.
 **/
@Entity
@Table(name="who_growth_standard_constant", schema = "babycheckup")
public class WhoGrowthStandardConstant implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    private Integer id;
    /**
     * 数据标准类型 1:身高标准；2:体重标准：3:头围标准
     */
    private String constantName;
    /**
     * 数据标准类型 1:身高标准；2:体重标准：3:头围标准
     */
    private Integer constantType;
    /**
     * 性别类型 男 1 女 0
     */
    private Integer sexType;

    /**
     * 月龄
     */
    private Integer monthAge;

    /**
     * -3标准差
     */
    private String sdL3;
    /**
     * -2标准差
     */
    private String sdL2;
    /**
     * -1标准差
     */
    private String sdL1;
    /**
     * 标准差
     */
    private String sdZero;
    /**
     * +3标准差
     */
    private String sdr3;
    /**
     * +2标准差
     */
    private String sdr2;
    /**
     * +1标准差
     */
    private String sdr1;


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
    @Column(name = "constant_name", nullable = false)
    public String getConstantName() {
        return constantName;
    }

    public void setConstantName(String constantName) {
        this.constantName = constantName;
    }

    @Basic
    @Column(name = "constant_type", nullable = false)
    public Integer getConstantType() {
        return constantType;
    }

    public void setConstantType(Integer constantType) {
        this.constantType = constantType;
    }

    @Basic
    @Column(name = "sex_type")
    public Integer getSexType() {
        return sexType;
    }

    public void setSexType(Integer sexType) {
        this.sexType = sexType;
    }

    @Basic
    @Column(name = "month_age")
    public Integer getMonthAge() {
        return monthAge;
    }

    public void setMonthAge(Integer monthAge) {
        this.monthAge = monthAge;
    }

    @Basic
    @Column(name = "sd_l3")
    public String getSdL3() {
        return sdL3;
    }

    public void setSdL3(String sdL3) {
        this.sdL3 = sdL3;
    }

    @Basic
    @Column(name = "sd_l2")
    public String getSdL2() {
        return sdL2;
    }

    public void setSdL2(String sdL2) {
        this.sdL2 = sdL2;
    }

    @Basic
    @Column(name = "sd_l1")
    public String getSdL1() {
        return sdL1;
    }

    public void setSdL1(String sdL1) {
        this.sdL1 = sdL1;
    }

    @Basic
    @Column(name = "sd_zero")
    public String getSdZero() {
        return sdZero;
    }

    public void setSdZero(String sdZero) {
        this.sdZero = sdZero;
    }

    @Basic
    @Column(name = "sd_r3")
    public String getSdr3() {
        return sdr3;
    }

    public void setSdr3(String sdr3) {
        this.sdr3 = sdr3;
    }

    @Basic
    @Column(name = "sd_r2")
    public String getSdr2() {
        return sdr2;
    }

    public void setSdr2(String sdr2) {
        this.sdr2 = sdr2;
    }

    @Basic
    @Column(name = "sd_r1")
    public String getSdr1() {
        return sdr1;
    }

    public void setSdr1(String sdr1) {
        this.sdr1 = sdr1;
    }
}
