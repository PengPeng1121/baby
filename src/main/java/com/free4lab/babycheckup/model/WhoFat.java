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
@Table(name="who_fat" ,schema = "babycheckup", catalog = "")
public class WhoFat implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    private Integer id;
    /**
     * 身高
     */
    private String heightValue;
    /**
     * 正常体重值
     */
    private String normalValue;
    /**
     * 超重体重值
     */
    private String overweightValue;
    /**
     * 轻度体重值
     */
    private String littleFatValue;
    /**
     * 中度体重值
     */
    private String middleFatValue;
    /**
     * 重度体重值
     */
    private String seriousFatValue;
    /**
     * 性别类型 男 1 女 2
     */
    private Integer sexType;

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
    @Column(name = "height_value", nullable = false)
    public String getHeightValue() {
        return heightValue;
    }

    public void setHeightValue(String heightValue) {
        this.heightValue = heightValue;
    }

    @Basic
    @Column(name = "normal_value", nullable = false)
    public String getNormalValue() {
        return normalValue;
    }

    public void setNormalValue(String normalValue) {
        this.normalValue = normalValue;
    }

    @Basic
    @Column(name = "overweight_value", nullable = false)
    public String getOverweightValue() {
        return overweightValue;
    }

    public void setOverweightValue(String overweightValue) {
        this.overweightValue = overweightValue;
    }

    @Basic
    @Column(name = "little_fat_value", nullable = false)
    public String getLittleFatValue() {
        return littleFatValue;
    }

    public void setLittleFatValue(String littleFatValue) {
        this.littleFatValue = littleFatValue;
    }

    @Basic
    @Column(name = "middle_fat_value", nullable = false)
    public String getMiddleFatValue() {
        return middleFatValue;
    }

    public void setMiddleFatValue(String middleFatValue) {
        this.middleFatValue = middleFatValue;
    }

    @Basic
    @Column(name = "serious_fat_value", nullable = false)
    public String getSeriousFatValue() {
        return seriousFatValue;
    }

    public void setSeriousFatValue(String seriousFatValue) {
        this.seriousFatValue = seriousFatValue;
    }

    @Basic
    @Column(name = "sex_type", nullable = false)
    public Integer getSexType() {
        return sexType;
    }

    public void setSexType(Integer sexType) {
        this.sexType = sexType;
    }

}
