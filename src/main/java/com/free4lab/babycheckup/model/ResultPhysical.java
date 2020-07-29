package com.free4lab.babycheckup.model;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Date;

@Entity
@Table(name = "result_physical", schema = "babycheckup", catalog = "")
public class ResultPhysical {
    private int id;
    private int testId;
    private int hosId;
    private int babyId;
    private Timestamp time;
    private int userId;
    private String state;
    /**
     * 毛发是否正常
     */
    private int hairIsNormal;

    /**
     * 毛发不正常原因
     */
    private String hairReason;

    /**
     * 指甲是否正常
     */
    private int fingernailIsNormal;

    /**
     * 指甲不正常原因
     */
    private String fingernailReason;

    /**
     * 皮肤是否正常
     */
    private int skinIsNormal;

    /**
     * 皮肤不正常原因
     */
    private String skinReason;

    /**
     * 脸色是否正常
     */
    private int faceIsNormal;

    /**
     * 脸色不正常原因
     */
    private String faceReason;

    /**
     * 头部是否正常
     */
    private int headIsNormal;

    /**
     * 头部不正常原因
     */
    private String headReason;

    /**
     * 眼是否正常
     */
    private int eyeIsNormal;

    /**
     * 眼不正常原因
     */
    private String eyeReason;

    /**
     * 耳朵是否正常
     */
    private int earIsNormal;

    /**
     * 耳朵不正常原因
     */
    private String earReason;

    /**
     * 口腔是否正常
     */
    private int mouthIsNormal;

    /**
     * 口腔不正常原因
     */
    private String mouthReason;

    /**
     * 颈部是否正常
     */
    private int neckIsNormal;

    /**
     * 颈部不正常原因
     */
    private String neckReason;

    /**
     * 淋巴是否正常
     */
    private int lymphIsNormal;

    /**
     * 淋巴不正常原因
     */
    private String lymphReason;

    /**
     * 淋巴是否正常
     */
    private int thoracicCavityIsNormal;

    /**
     * 淋巴不正常原因
     */
    private String thoracicCavityReason;

    /**
     * 心脏是否正常
     */
    private int heartIsNormal;

    /**
     * 心脏不正常原因
     */
    private String heartReason;

    /**
     * 肺是否正常
     */
    private int lungIsNormal;

    /**
     * 肺不正常原因
     */
    private String lungReason;

    /**
     * 腹部是否正常
     */
    private int stomachIsNormal;

    /**
     * 腹部不正常原因
     */
    private String stomachReason;

    /**
     * 四肢是否正常
     */
    private int limbIsNormal;

    /**
     * 四肢不正常原因
     */
    private String limbReason;

    /**
     * 肛门/外生殖器是否正常
     */
    private int sexFeaturesIsNormal;

    /**
     * 肛门/外生殖器不正常原因
     */
    private String sexFeaturesReason;

    /**
     * 可疑vd缺乏症状是否正常
     */
    private int vdIsNormal;

    /**
     * 可疑vd缺乏症状不正常原因
     */
    private String vdReason;

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
    @Column(name = "hair_is_normal")
    public int getHairIsNormal() {
        return hairIsNormal;
    }

    public void setHairIsNormal(int hairIsNormal) {
        this.hairIsNormal = hairIsNormal;
    }

    @Basic
    @Column(name = "hair_reason")
    public String getHairReason() {
        return hairReason;
    }

    public void setHairReason(String hairReason) {
        this.hairReason = hairReason;
    }

    @Basic
    @Column(name = "fingernail_is_normal")
    public int getFingernailIsNormal() {
        return fingernailIsNormal;
    }

    public void setFingernailIsNormal(int fingernailIsNormal) {
        this.fingernailIsNormal = fingernailIsNormal;
    }

    @Basic
    @Column(name = "fingernail_reason")
    public String getFingernailReason() {
        return fingernailReason;
    }

    public void setFingernailReason(String fingernailReason) {
        this.fingernailReason = fingernailReason;
    }

    @Basic
    @Column(name = "skin_is_normal")
    public int getSkinIsNormal() {
        return skinIsNormal;
    }

    public void setSkinIsNormal(int skinIsNormal) {
        this.skinIsNormal = skinIsNormal;
    }

    @Basic
    @Column(name = "skin_reason")
    public String getSkinReason() {
        return skinReason;
    }

    public void setSkinReason(String skinReason) {
        this.skinReason = skinReason;
    }

    @Basic
    @Column(name = "face_is_normal")
    public int getFaceIsNormal() {
        return faceIsNormal;
    }

    public void setFaceIsNormal(int faceIsNormal) {
        this.faceIsNormal = faceIsNormal;
    }

    @Basic
    @Column(name = "face_reason")
    public String getFaceReason() {
        return faceReason;
    }

    public void setFaceReason(String faceReason) {
        this.faceReason = faceReason;
    }

    @Basic
    @Column(name = "head_is_normal")
    public int getHeadIsNormal() {
        return headIsNormal;
    }

    public void setHeadIsNormal(int headIsNormal) {
        this.headIsNormal = headIsNormal;
    }

    @Basic
    @Column(name = "head_reason")
    public String getHeadReason() {
        return headReason;
    }

    public void setHeadReason(String headReason) {
        this.headReason = headReason;
    }

    @Basic
    @Column(name = "eye_is_normal")
    public int getEyeIsNormal() {
        return eyeIsNormal;
    }

    public void setEyeIsNormal(int eyeIsNormal) {
        this.eyeIsNormal = eyeIsNormal;
    }

    @Basic
    @Column(name = "eye_reason")
    public String getEyeReason() {
        return eyeReason;
    }

    public void setEyeReason(String eyeReason) {
        this.eyeReason = eyeReason;
    }

    @Basic
    @Column(name = "ear_is_normal")
    public int getEarIsNormal() {
        return earIsNormal;
    }

    public void setEarIsNormal(int earIsNormal) {
        this.earIsNormal = earIsNormal;
    }

    @Basic
    @Column(name = "ear_reason")
    public String getEarReason() {
        return earReason;
    }

    public void setEarReason(String earReason) {
        this.earReason = earReason;
    }

    @Basic
    @Column(name = "mouth_is_normal")
    public int getMouthIsNormal() {
        return mouthIsNormal;
    }

    public void setMouthIsNormal(int mouthIsNormal) {
        this.mouthIsNormal = mouthIsNormal;
    }

    @Basic
    @Column(name = "mouth_reason")
    public String getMouthReason() {
        return mouthReason;
    }

    public void setMouthReason(String mouthReason) {
        this.mouthReason = mouthReason;
    }

    @Basic
    @Column(name = "neck_is_normal")
    public int getNeckIsNormal() {
        return neckIsNormal;
    }

    public void setNeckIsNormal(int neckIsNormal) {
        this.neckIsNormal = neckIsNormal;
    }

    @Basic
    @Column(name = "neck_reason")
    public String getNeckReason() {
        return neckReason;
    }

    public void setNeckReason(String neckReason) {
        this.neckReason = neckReason;
    }

    @Basic
    @Column(name = "lymph_is_normal")
    public int getLymphIsNormal() {
        return lymphIsNormal;
    }

    public void setLymphIsNormal(int lymphIsNormal) {
        this.lymphIsNormal = lymphIsNormal;
    }

    @Basic
    @Column(name = "lymph_reason")
    public String getLymphReason() {
        return lymphReason;
    }

    public void setLymphReason(String lymphReason) {
        this.lymphReason = lymphReason;
    }

    @Basic
    @Column(name = "thoracic_cavity_is_normal")
    public int getThoracicCavityIsNormal() {
        return thoracicCavityIsNormal;
    }

    public void setThoracicCavityIsNormal(int thoracicCavityIsNormal) {
        this.thoracicCavityIsNormal = thoracicCavityIsNormal;
    }

    @Basic
    @Column(name = "thoracic_cavity_reason")
    public String getThoracicCavityReason() {
        return thoracicCavityReason;
    }

    public void setThoracicCavityReason(String thoracicCavityReason) {
        this.thoracicCavityReason = thoracicCavityReason;
    }

    @Basic
    @Column(name = "heart_is_normal")
    public int getHeartIsNormal() {
        return heartIsNormal;
    }

    public void setHeartIsNormal(int heartIsNormal) {
        this.heartIsNormal = heartIsNormal;
    }

    @Basic
    @Column(name = "heart_reason")
    public String getHeartReason() {
        return heartReason;
    }

    public void setHeartReason(String heartReason) {
        this.heartReason = heartReason;
    }

    @Basic
    @Column(name = "lung_is_normal")
    public int getLungIsNormal() {
        return lungIsNormal;
    }

    public void setLungIsNormal(int lungIsNormal) {
        this.lungIsNormal = lungIsNormal;
    }

    @Basic
    @Column(name = "lung_reason")
    public String getLungReason() {
        return lungReason;
    }

    public void setLungReason(String lungReason) {
        this.lungReason = lungReason;
    }

    @Basic
    @Column(name = "stomach_is_normal")
    public int getStomachIsNormal() {
        return stomachIsNormal;
    }

    public void setStomachIsNormal(int stomachIsNormal) {
        this.stomachIsNormal = stomachIsNormal;
    }

    @Basic
    @Column(name = "stomach_reason")
    public String getStomachReason() {
        return stomachReason;
    }

    public void setStomachReason(String stomachReason) {
        this.stomachReason = stomachReason;
    }

    @Basic
    @Column(name = "limb_is_normal")
    public int getLimbIsNormal() {
        return limbIsNormal;
    }

    public void setLimbIsNormal(int limbIsNormal) {
        this.limbIsNormal = limbIsNormal;
    }

    @Basic
    @Column(name = "limb_reason")
    public String getLimbReason() {
        return limbReason;
    }

    public void setLimbReason(String limbReason) {
        this.limbReason = limbReason;
    }

    @Basic
    @Column(name = "sex_features_is_normal")
    public int getSexFeaturesIsNormal() {
        return sexFeaturesIsNormal;
    }

    public void setSexFeaturesIsNormal(int sexFeaturesIsNormal) {
        this.sexFeaturesIsNormal = sexFeaturesIsNormal;
    }

    @Basic
    @Column(name = "sex_features__reason")
    public String getSexFeaturesReason() {
        return sexFeaturesReason;
    }

    public void setSexFeaturesReason(String sexFeaturesReason) {
        this.sexFeaturesReason = sexFeaturesReason;
    }

    @Basic
    @Column(name = "vd_is_normal")
    public int getVdIsNormal() {
        return vdIsNormal;
    }

    public void setVdIsNormal(int vdIsNormal) {
        this.vdIsNormal = vdIsNormal;
    }

    @Basic
    @Column(name = "vd_reason")
    public String getVdReason() {
        return vdReason;
    }

    public void setVdReason(String vdReason) {
        this.vdReason = vdReason;
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
