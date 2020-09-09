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
    // 头像文件前缀
    private final static String HEAD_IMG_URL_PREFIX = "Head";
    // 眼睛文件前缀
    private final static String EYE_IMG_URL_PREFIX = "Eye";
    // 耳朵文件前缀
    private final static String EAR_IMG_URL_PREFIX = "Ear";
    // 骨密度文件前缀
    private final static String BMD_IMG_URL_PREFIX = "BMD";

    // 上传头像
    public String uploadHeadImg() {
        // 头像地址
        headImgUrl = buildFileName(HEAD_IMG_URL_PREFIX);
        String relativePath = FileUtil.FILE_ABSOLUTE_PATH + headImgUrl;
        FileUtil.saveFile(file, relativePath);
        return SUCCESS;
    }

    // 上传视力筛查
    public String uploadEyeImg() {
        // 视力筛查
        eyeImgUrl = buildFileName(EYE_IMG_URL_PREFIX);
        String relativePath = FileUtil.FILE_ABSOLUTE_PATH + eyeImgUrl;
        FileUtil.saveFile(file, relativePath);
        return SUCCESS;
    }

    // 上传听力筛查
    public String uploadEarImg() {
        // 听力筛查
        earImgUrl = buildFileName(EAR_IMG_URL_PREFIX);
        String relativePath = FileUtil.FILE_ABSOLUTE_PATH + earImgUrl;
        FileUtil.saveFile(file, relativePath);
        return SUCCESS;
    }

    // 上传骨密度筛查
    public String uploadBMDImg() {
        // 骨密度筛查
        bmdImgUrl = buildFileName(BMD_IMG_URL_PREFIX);
        String relativePath = FileUtil.FILE_ABSOLUTE_PATH + bmdImgUrl;
        FileUtil.saveFile(file, relativePath);
        return SUCCESS;
    }

    /**
     * 构建文件名 前缀-日期（yyyy-MM-dd）-T-测试卡片id-B-小朋友id-UUID
     * @param  prefix
     * @return
     */
    private String buildFileName(String prefix){

        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
        String timeNow = simpleDateFormat.format(new Date());
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(prefix).append("-").append(timeNow).append("-T-").append(testId).append("-B-").append(babyId);
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
}
