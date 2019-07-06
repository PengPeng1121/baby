package com.free4lab.babycheckup.model;

import javax.persistence.*;
import java.io.Serializable;

/**
 * 成长发育基本数据信息表Domain
 * User: dabai
 * Date: 2019-01-22
 * To change this template use File | Settings | File Templates.
 **/
@Entity
@Table(name="growth_and_development_constant", schema = "babycheckup")
public class GrowthAndDevelopment implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键
     */
    private Integer id;
    /**
     * 当type为bmi:value为月龄、身高别年龄:月龄、身高别体重:身高、体重别年龄:月龄
     */
    private String constantValue;
    /**
     * 基本数据类型 Bmi 身高别年龄 体重别年龄 身高别体重
     */
    private String constantName;
    /**
     * 基本数据类型 1:Bmi 2:身高别年龄 3：体重别年龄 4:身高别体重
     */
    private Integer constantType;
    /**
     * 数据版本类型 0 ：（0-7岁使用）；1：（7-18岁使用）'
     */
    private Integer dataType;
    /**
     * L值
     */
    private String valueL;
    /**
     * M值
     */
    private String valueM;
    /**
     * S值
     */
    private String valueS;
    /**
     * 百分之3值
     */
    private String value3;
    /**
     * 百分之5值
     */
    private String value5;
    /**
     * 百分之10值
     */
    private String value10;
    /**
     * 百分之15值
     */
    private String value15;
    /**
     * 百分之20值
     */
    private String value20;
    /**
     * 百分之25值
     */
    private String value25;
    /**
     * 百分之30值
     */
    private String value30;
    /**
     * 百分之40值
     */
    private String value40;
    /**
     * 百分之50值
     */
    private String value50;
    /**
     * 百分之60值
     */
    private String value60;
    /**
     * 百分之70值
     */
    private String value70;
    /**
     * 百分之75值
     */
    private String value75;
    /**
     * 百分之80值
     */
    private String value80;
    /**
     * 百分之85值
     */
    private String value85;
    /**
     * 百分之90值
     */
    private String value90;
    /**
     * 百分之95值
     */
    private String value95;
    /**
     * 百分之97值
     */
    private String value97;
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
    @Column(name = "constant_value", nullable = false)
    public String getConstantValue() {
        return constantValue;
    }

    public void setConstantValue(String constantValue) {
        this.constantValue = constantValue;
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
    @Column(name = "data_type", nullable = false)
    public Integer getDataType() {
        return dataType;
    }

    public void setDataType(Integer dataType) {
        this.dataType = dataType;
    }

    @Basic
    @Column(name = "value_L")
    public String getValueL() {
        return valueL;
    }

    public void setValueL(String valueL) {
        this.valueL = valueL;
    }

    @Basic
    @Column(name = "value_M")
    public String getValueM() {
        return valueM;
    }

    public void setValueM(String valueM) {
        this.valueM = valueM;
    }

    @Basic
    @Column(name = "value_S")
    public String getValueS() {
        return valueS;
    }

    public void setValueS(String valueS) {
        this.valueS = valueS;
    }

    @Basic
    @Column(name = "value_3")
    public String getValue3() {
        return value3;
    }

    public void setValue3(String value3) {
        this.value3 = value3;
    }

    @Basic
    @Column(name = "value_5")
    public String getValue5() {
        return value5;
    }

    public void setValue5(String value5) {
        this.value5 = value5;
    }

    @Basic
    @Column(name = "value_10")
    public String getValue10() {
        return value10;
    }

    public void setValue10(String value10) {
        this.value10 = value10;
    }

    @Basic
    @Column(name = "value_15")
    public String getValue15() {
        return value15;
    }

    public void setValue15(String value15) {
        this.value15 = value15;
    }

    @Basic
    @Column(name = "value_20")
    public String getValue20() {
        return value20;
    }

    public void setValue20(String value20) {
        this.value20 = value20;
    }

    @Basic
    @Column(name = "value_25")
    public String getValue25() {
        return value25;
    }

    public void setValue25(String value25) {
        this.value25 = value25;
    }

    @Basic
    @Column(name = "value_30")
    public String getValue30() {
        return value30;
    }

    public void setValue30(String value30) {
        this.value30 = value30;
    }

    @Basic
    @Column(name = "value_40")
    public String getValue40() {
        return value40;
    }

    public void setValue40(String value40) {
        this.value40 = value40;
    }

    @Basic
    @Column(name = "value_50")
    public String getValue50() {
        return value50;
    }

    public void setValue50(String value50) {
        this.value50 = value50;
    }

    @Basic
    @Column(name = "value_60")
    public String getValue60() {
        return value60;
    }

    public void setValue60(String value60) {
        this.value60 = value60;
    }

    @Basic
    @Column(name = "value_70")
    public String getValue70() {
        return value70;
    }

    public void setValue70(String value70) {
        this.value70 = value70;
    }

    @Basic
    @Column(name = "value_75")
    public String getValue75() {
        return value75;
    }

    public void setValue75(String value75) {
        this.value75 = value75;
    }

    @Basic
    @Column(name = "value_80")
    public String getValue80() {
        return value80;
    }

    public void setValue80(String value80) {
        this.value80 = value80;
    }

    @Basic
    @Column(name = "value_85")
    public String getValue85() {
        return value85;
    }

    public void setValue85(String value85) {
        this.value85 = value85;
    }

    @Basic
    @Column(name = "value_90")
    public String getValue90() {
        return value90;
    }

    public void setValue90(String value90) {
        this.value90 = value90;
    }

    @Basic
    @Column(name = "value_95")
    public String getValue95() {
        return value95;
    }

    public void setValue95(String value95) {
        this.value95 = value95;
    }

    @Basic
    @Column(name = "value_97")
    public String getValue97() {
        return value97;
    }

    public void setValue97(String value97) {
        this.value97 = value97;
    }

    @Basic
    @Column(name = "sex_type")
    public Integer getSexType() {
        return sexType;
    }

    public void setSexType(Integer sexType) {
        this.sexType = sexType;
    }

}
