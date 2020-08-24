package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.utils.FileLocationUtil;
import com.free4lab.babycheckup.utils.FileUtil;
import com.opensymphony.xwork2.ActionContext;

import java.io.*;
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
    private String relativePath;

    public String uploadHeadImg() {
        Long timeNow = new Date().getTime();
        String headImgFileName = testId+"-"+babyId+"-"+timeNow+"-"+filename;
        String relativePath = FileUtil.FILE_ABSOLUTE_PATH + headImgFileName;
        FileUtil.saveFile(file, relativePath);
        return SUCCESS;
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

    public String getRelativePath() {
        return relativePath;
    }

    public void setRelativePath(String relativePath) {
        this.relativePath = relativePath;
    }
}
