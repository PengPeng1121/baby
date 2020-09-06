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

    // 头像文件前缀
    private final static String HEAD_IMG_URL_PREFIX = "Head";
    // 眼睛文件前缀
    private final static String EYE_IMG_URL_PREFIX = "Eye";
    // 耳朵文件前缀
    private final static String Ear_IMG_URL_PREFIX = "Ear";

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

    /**
     * 构建文件名 前缀-日期（yyyy-MM-dd）-T-测试卡片id-B-小朋友id
     * @param  prefix
     * @param  filename
     * @return
     */
    private String buildFileName(String prefix,String filename){
        if(StringUtils.isNotEmpty(filename) && filename.length() > 30){
            filename = filename.substring(0,30);
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
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
}
