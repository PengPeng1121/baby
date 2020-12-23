package com.free4lab.babycheckup.model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Date;

@Entity
@Table(name = "result_basic2", schema = "babycheckup", catalog = "")
public class ResultBasic2 {
    private int id;
    private int testId;
    private int hosId;
    private int babyId;
    private Timestamp time;
    private int userId;
    private String state;
    /**
     * 是否顺产 0否 1是
     */
    private int isNormalChildbirth;
    /**
     * 出生时有无以下情况
     */
    private String childbirthSituation;
    /**
     * 生产胎龄(周)
     */
    private String babyBirthWeekAge;
    /**
     * 是否早产
     */
    private Integer isPremature;
    /**
     * 宝宝出生体重
     */
    private String babyBirthWeight;
    /**
     * 母亲妊娠期患病情况
     */
    private String motherPregnancyDiseaseSituation;
    /**
     * 产次
     */
    private int babyCount;
    /**
     * 母亲生育年龄
     */
    private String childBearingAge;
    /**
     * 胎次
     */
    private int pregnantCount;
    /**
     * 既往病史
     */
    private String diseasePastHistory;
    /**
     * 遗传性疾病
     */
    private String familyHeredityDisease;
    /**
     * 是否遗传 0否 1是
     */
    private int isHeredityDisease1;
    /**
     * 是否遗传 0否 1是
     */
    private int isHeredityDisease2;
    /**
     * 是否遗传 0否 1是
     */
    private int isHeredityDisease3;
    /**
     * 是否遗传 0否 1是
     */
    private int isHeredityDisease4;
    /**
     * 是否有过敏史 0否 1是
     */
    private int isAllergyHistory;
    /**
     * 过敏情况
     */
    private String allergySituation;
    /**
     * 父亲身高
     */
    private String fatherHeight;
    /**
     * 母亲身高
     */
    private String motherHeight;
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
    @Column(name = "is_normal_child_birth", nullable = false)
    public int getIsNormalChildbirth() {
        return isNormalChildbirth;
    }

    public void setIsNormalChildbirth(int isNormalChildbirth) {
        this.isNormalChildbirth = isNormalChildbirth;
    }

    @Basic
    @Column(name = "childbirth_situation", nullable = false)
    public String getChildbirthSituation() {
        return childbirthSituation;
    }

    public void setChildbirthSituation(String childbirthSituation) {
        this.childbirthSituation = childbirthSituation;
    }

    @Basic
    @Column(name = "baby_birth_week_age", nullable = false)
    public String getBabyBirthWeekAge() {
        return babyBirthWeekAge;
    }

    public void setBabyBirthWeekAge(String babyBirthWeekAge) {
        this.babyBirthWeekAge = babyBirthWeekAge;
    }

    @Basic
    @Column(name = "is_premature", nullable = false)
    public Integer getIsPremature() {
        return isPremature;
    }

    public void setIsPremature(Integer isPremature) {
        this.isPremature = isPremature;
    }

    @Basic
    @Column(name = "child_bearing_age", nullable = false)
    public String getChildBearingAge() {
        return childBearingAge;
    }

    public void setChildBearingAge(String childBearingAge) {
        this.childBearingAge = childBearingAge;
    }

    @Basic
    @Column(name = "baby_birth_weight", nullable = false)
    public String getBabyBirthWeight() {
        return babyBirthWeight;
    }

    public void setBabyBirthWeight(String babyBirthWeight) {
        this.babyBirthWeight = babyBirthWeight;
    }

    @Basic
    @Column(name = "mother_pregnancy_disease_situation", nullable = false)
    public String getMotherPregnancyDiseaseSituation() {
        return motherPregnancyDiseaseSituation;
    }

    public void setMotherPregnancyDiseaseSituation(String motherPregnancyDiseaseSituation) {
        this.motherPregnancyDiseaseSituation = motherPregnancyDiseaseSituation;
    }

    @Basic
    @Column(name = "baby_count", nullable = false)
    public int getBabyCount() {
        return babyCount;
    }

    public void setBabyCount(int babyCount) {
        this.babyCount = babyCount;
    }

    @Basic
    @Column(name = "pregnant_count", nullable = false)
    public int getPregnantCount() {
        return pregnantCount;
    }

    public void setPregnantCount(int pregnantCount) {
        this.pregnantCount = pregnantCount;
    }

    @Basic
    @Column(name = "disease_past_history", nullable = false)
    public String getDiseasePastHistory() {
        return diseasePastHistory;
    }

    public void setDiseasePastHistory(String diseasePastHistory) {
        this.diseasePastHistory = diseasePastHistory;
    }

    @Basic
    @Column(name = "family_heredity_disease", nullable = false)
    public String getFamilyHeredityDisease() {
        return familyHeredityDisease;
    }

    public void setFamilyHeredityDisease(String familyHeredityDisease) {
        this.familyHeredityDisease = familyHeredityDisease;
    }


    @Basic
    @Column(name = "is_heredity_disease1", nullable = false)
    public int getIsHeredityDisease1() {
        return isHeredityDisease1;
    }

    public void setIsHeredityDisease1(int isHeredityDisease1) {
        this.isHeredityDisease1 = isHeredityDisease1;
    }

    @Basic
    @Column(name = "is_heredity_disease2", nullable = false)
    public int getIsHeredityDisease2() {
        return isHeredityDisease2;
    }

    public void setIsHeredityDisease2(int isHeredityDisease2) {
        this.isHeredityDisease2 = isHeredityDisease2;
    }

    @Basic
    @Column(name = "is_heredity_disease3", nullable = false)
    public int getIsHeredityDisease3() {
        return isHeredityDisease3;
    }

    public void setIsHeredityDisease3(int isHeredityDisease3) {
        this.isHeredityDisease3 = isHeredityDisease3;
    }

    @Basic
    @Column(name = "is_heredity_disease4", nullable = false)
    public int getIsHeredityDisease4() {
        return isHeredityDisease4;
    }

    public void setIsHeredityDisease4(int isHeredityDisease4) {
        this.isHeredityDisease4 = isHeredityDisease4;
    }

    @Basic
    @Column(name = "is_allergy_history", nullable = false)
    public int getIsAllergyHistory() {
        return isAllergyHistory;
    }

    public void setIsAllergyHistory(int isAllergyHistory) {
        this.isAllergyHistory = isAllergyHistory;
    }


    @Basic
    @Column(name = "allergy_situation", nullable = false)
    public String getAllergySituation() {
        return allergySituation;
    }

    public void setAllergySituation(String allergySituation) {
        this.allergySituation = allergySituation;
    }

    @Basic
    @Column(name = "father_height", nullable = false)
    public String getFatherHeight() {
        return fatherHeight;
    }

    public void setFatherHeight(String fatherHeight) {
        this.fatherHeight = fatherHeight;
    }

    @Basic
    @Column(name = "mother_height", nullable = false)
    public String getMotherHeight() {
        return motherHeight;
    }

    public void setMotherHeight(String motherHeight) {
        this.motherHeight = motherHeight;
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
