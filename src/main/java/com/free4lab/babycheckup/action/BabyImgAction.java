package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.utils.FileUtil;
import org.apache.commons.lang.StringUtils;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 儿童头像
 * Created by Administrator on 2020/08/24.
 */
public class BabyImgAction {
    private String SUCCESS = "success";
    private int babyId;
    private int testId;
    private File file;
    private String filename;
    private String headImgUrl;// 头像文件
    private String eyeImgUrl;// 视力筛查
    private String earImgUrl;// 听力文件
    private String bmdImgUrl;// 骨密度筛查
    private String bloodImgUrl;// 血常规检查
    private String microImgUrl;// 微量元素检查
    private String boneImgUrl;// 骨碱酶检查
    private String urineImgUrl;// 尿常规检查
    private String hbsImgUrl;// 乙肝检查
    private String fastAllergyImgUrl;// 21项速查过敏原
    private String foodAllergyImgUrl;// 14项慢性食物过敏原
    private String bloodTypeImgUrl;// 血型检查
    private String ECGImgUrl;// 血型检查


    // 头像文件前缀
    private final static String HEAD_IMG_URL_PREFIX = "Head";
    // 眼睛文件前缀
    private final static String EYE_IMG_URL_PREFIX = "Eye";
    // 耳朵文件前缀
    private final static String EAR_IMG_URL_PREFIX = "Ear";
    // 骨密度文件前缀
    private final static String BMD_IMG_URL_PREFIX = "BMD";
    // 血常规文件前缀
    private final static String BLOOD_ROUTINE_IMG_URL_PREFIX = "Blood-routine";
    // 微量元素检查文件前缀
    private final static String MICRO_IMG_URL_PREFIX = "Micro";
    // 骨碱酶检查文件前缀
    private final static String BONE_IMG_URL_PREFIX = "Bone";
    // 尿常规检查文件前缀
    private final static String URINE_IMG_URL_PREFIX = "Urine";
    // 乙肝检查文件前缀
    private final static String HBS_IMG_URL_PREFIX = "Hbs";
    // 21项速查过敏原文件前缀
    private final static String FAST_ALLERGY_IMG_URL_PREFIX = "Fast-allergy";
    // 14项慢性食物过敏原文件前缀
    private final static String FOOD_ALLERGY_IMG_URL_PREFIX = "Food-allergy";
    // 血型检查文件前缀
    private final static String BLOOD_TYPE_IMG_URL_PREFIX = "Blood-type";
    // 心电筛查
    private final static String ECG_IMG_URL_PREFIX = "ECG";

    // 上传头像
    public String uploadHeadImg() {
        // 头像地址
        headImgUrl = buildFileName(HEAD_IMG_URL_PREFIX,filename);
        String relativePath = FileUtil.FILE_ABSOLUTE_PATH + headImgUrl;
        FileUtil.saveFile(file, relativePath);
        return SUCCESS;
    }

    // 上传视力筛查
    public String uploadEyeImg() {
        // 视力筛查
        eyeImgUrl = buildFileName(EYE_IMG_URL_PREFIX,filename);
        String relativePath = FileUtil.FILE_ABSOLUTE_PATH + eyeImgUrl;
        FileUtil.saveFile(file, relativePath);
        return SUCCESS;
    }

    // 上传听力筛查
    public String uploadEarImg() {
        // 听力筛查
        earImgUrl = buildFileName(EAR_IMG_URL_PREFIX,filename);
        String relativePath = FileUtil.FILE_ABSOLUTE_PATH + earImgUrl;
        FileUtil.saveFile(file, relativePath);
        return SUCCESS;
    }

    // 上传骨密度筛查
    public String uploadBMDImg() {
        // 骨密度筛查
        bmdImgUrl = buildFileName(BMD_IMG_URL_PREFIX,filename);
        String relativePath = FileUtil.FILE_ABSOLUTE_PATH + bmdImgUrl;
        FileUtil.saveFile(file, relativePath);
        return SUCCESS;
    }


    // 上传血常规文件
    public String uploadBloodImg() {
        bloodImgUrl = buildFileName(BLOOD_ROUTINE_IMG_URL_PREFIX,filename);
        String relativePath = FileUtil.FILE_ABSOLUTE_PATH + bloodImgUrl;
        FileUtil.saveFile(file, relativePath);
        return SUCCESS;
    }

    // 上传微量元素检查文件
    public String uploadMicroImg() {
        microImgUrl = buildFileName(MICRO_IMG_URL_PREFIX,filename);
        String relativePath = FileUtil.FILE_ABSOLUTE_PATH + microImgUrl;
        FileUtil.saveFile(file, relativePath);
        return SUCCESS;
    }

    // 上传骨碱酶检查文件
    public String uploadBoneImg() {
        boneImgUrl = buildFileName(BONE_IMG_URL_PREFIX,filename);
        String relativePath = FileUtil.FILE_ABSOLUTE_PATH + boneImgUrl;
        FileUtil.saveFile(file, relativePath);
        return SUCCESS;
    }

    // 上传尿常规检查文件
    public String uploadUrineImg() {
        urineImgUrl = buildFileName(URINE_IMG_URL_PREFIX,filename);
        String relativePath = FileUtil.FILE_ABSOLUTE_PATH + urineImgUrl;
        FileUtil.saveFile(file, relativePath);
        return SUCCESS;
    }

    // 上传乙肝检查文件
    public String uploadHbsImg() {
        hbsImgUrl = buildFileName(HBS_IMG_URL_PREFIX,filename);
        String relativePath = FileUtil.FILE_ABSOLUTE_PATH + hbsImgUrl;
        FileUtil.saveFile(file, relativePath);
        return SUCCESS;
    }

    // 上传21项速查过敏原文件
    public String uploadFastAllergyImg() {
        fastAllergyImgUrl = buildFileName(FAST_ALLERGY_IMG_URL_PREFIX,filename);
        String relativePath = FileUtil.FILE_ABSOLUTE_PATH + fastAllergyImgUrl;
        FileUtil.saveFile(file, relativePath);
        return SUCCESS;
    }

    // 上传14项慢性食物过敏原文件
    public String uploadFoodAllergyImg() {
        foodAllergyImgUrl = buildFileName(FOOD_ALLERGY_IMG_URL_PREFIX,filename);
        String relativePath = FileUtil.FILE_ABSOLUTE_PATH + foodAllergyImgUrl;
        FileUtil.saveFile(file, relativePath);
        return SUCCESS;
    }

    // 上传血型检查文件
    public String uploadBloodTypeImg() {
        bloodTypeImgUrl = buildFileName(BLOOD_TYPE_IMG_URL_PREFIX,filename);
        String relativePath = FileUtil.FILE_ABSOLUTE_PATH + bloodTypeImgUrl;
        FileUtil.saveFile(file, relativePath);
        return SUCCESS;
    }

    // 上传心电检查文件
    public String uploadEcgImg() {
        ECGImgUrl = buildFileName(ECG_IMG_URL_PREFIX,filename);
        String relativePath = FileUtil.FILE_ABSOLUTE_PATH + ECGImgUrl;
        FileUtil.saveFile(file, relativePath);
        return SUCCESS;
    }

    /**
     * 构建文件名 前缀-日期（yyyy-MM-dd）-T-测试卡片id-B-小朋友id-UUID
     * @param  prefix
     * @return
     */
    private String buildFileName(String prefix,String filename){
        if(StringUtils.isNotEmpty(filename)){
            filename = filename.substring(filename.lastIndexOf("."),filename.length());
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
        String timeNow = simpleDateFormat.format(new Date());
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(prefix).append("-").append(timeNow).append("-T-").append(testId).append("-B-").append(babyId).append("-").append(filename);
        return stringBuffer.toString();
    }

    public String getSUCCESS() {
        return SUCCESS;
    }

    public void setSUCCESS(String SUCCESS) {
        this.SUCCESS = SUCCESS;
    }

    public int getBabyId() {
        return babyId;
    }

    public void setBabyId(int babyId) {
        this.babyId = babyId;
    }

    public int getTestId() {
        return testId;
    }

    public void setTestId(int testId) {
        this.testId = testId;
    }

    public File getFile() {
        return file;
    }

    public void setFile(File file) {
        this.file = file;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getHeadImgUrl() {
        return headImgUrl;
    }

    public void setHeadImgUrl(String headImgUrl) {
        this.headImgUrl = headImgUrl;
    }

    public String getEyeImgUrl() {
        return eyeImgUrl;
    }

    public void setEyeImgUrl(String eyeImgUrl) {
        this.eyeImgUrl = eyeImgUrl;
    }

    public String getEarImgUrl() {
        return earImgUrl;
    }

    public void setEarImgUrl(String earImgUrl) {
        this.earImgUrl = earImgUrl;
    }

    public String getBmdImgUrl() {
        return bmdImgUrl;
    }

    public void setBmdImgUrl(String bmdImgUrl) {
        this.bmdImgUrl = bmdImgUrl;
    }

    public String getBloodImgUrl() {
        return bloodImgUrl;
    }

    public void setBloodImgUrl(String bloodImgUrl) {
        this.bloodImgUrl = bloodImgUrl;
    }

    public String getMicroImgUrl() {
        return microImgUrl;
    }

    public void setMicroImgUrl(String microImgUrl) {
        this.microImgUrl = microImgUrl;
    }

    public String getBoneImgUrl() {
        return boneImgUrl;
    }

    public void setBoneImgUrl(String boneImgUrl) {
        this.boneImgUrl = boneImgUrl;
    }

    public String getUrineImgUrl() {
        return urineImgUrl;
    }

    public void setUrineImgUrl(String urineImgUrl) {
        this.urineImgUrl = urineImgUrl;
    }

    public String getHbsImgUrl() {
        return hbsImgUrl;
    }

    public void setHbsImgUrl(String hbsImgUrl) {
        this.hbsImgUrl = hbsImgUrl;
    }

    public String getFastAllergyImgUrl() {
        return fastAllergyImgUrl;
    }

    public void setFastAllergyImgUrl(String fastAllergyImgUrl) {
        this.fastAllergyImgUrl = fastAllergyImgUrl;
    }

    public String getFoodAllergyImgUrl() {
        return foodAllergyImgUrl;
    }

    public void setFoodAllergyImgUrl(String foodAllergyImgUrl) {
        this.foodAllergyImgUrl = foodAllergyImgUrl;
    }

    public String getBloodTypeImgUrl() {
        return bloodTypeImgUrl;
    }

    public void setBloodTypeImgUrl(String bloodTypeImgUrl) {
        this.bloodTypeImgUrl = bloodTypeImgUrl;
    }

    public String getECGImgUrl() {
        return ECGImgUrl;
    }

    public void setECGImgUrl(String ECGImgUrl) {
        this.ECGImgUrl = ECGImgUrl;
    }
}
