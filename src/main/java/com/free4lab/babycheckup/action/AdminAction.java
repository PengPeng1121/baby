package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.AccountManager;
import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.HospitalManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.BabySchema;
import com.free4lab.babycheckup.model.Hospital;
import com.free4lab.babycheckup.model.User;
import com.free4lab.babycheckup.utils.FileLocationUtil;
import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.ServletActionContext;

import java.io.*;
import java.sql.Date;
import java.util.List;

/**
 * Created by Administrator on 2017/7/18.
 */
public class AdminAction {
    private String SUCCESS = "success";
    private List<User> userList;
    private List<Baby> babies;
    private String babyName;
    private String parentName;
    private String parentTel;
    private Hospital hospital;
    private File file;
    private String filename;
    private String position;
    private String relativePath;
    private BabySchema bs;
    private Boolean isUpdate = false;
    private Byte motherIllness;//母亲孕期疾病
    private Byte parity;//胎次
    private Byte pregnancy;//孕期
    private Byte delivery;//分娩方式
    private Byte asphyxia;//窒息
    private Byte jaundice;//新生儿黄疸
    private Byte birthWeight;//出生体重
    private Byte havePumping;//抽风史
    private Byte familyHistory;//家族病史
    private Byte illnessHistory;//重要病史
    private Byte height;//身长
    private Byte weight;//体重
    private Byte head;//头围
    private Byte diagnosis;//初步诊断
    private Byte remarks;//备注
    private Byte relation;//填表人称呼
    private Byte address;//家庭住址
    private Byte postcode;//邮政编码
    private Byte account;//户口属性
    private Byte bloodtype;//小儿血型
    private Byte education;//受教育程度
    private Byte preDelivery;//早产天数
    private Byte deformity;//畸形
    private Byte frontalSuture;//前囟
    private Byte onlyChild;//是否独生子女
    private Byte reason;//来诊原因
    private Byte evaluation;//家长对小孩评价
    private Byte overview;//测查儿童概述
    private Byte motherBirthage;//母亲生产年龄
    private Byte marriage;//家庭婚姻状况
    private Byte sit;//小儿坐高
    private Byte bust;//胸围
    private Byte bmi;

    public String indexAdmin() {
        hospital = HospitalManager.findByHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        if (hospital.getLogoLanding() == null || hospital.getLogoLanding().equals("")) {
            hospital.setLogoLanding("logo.png");
        }
        if (hospital.getBannerLanding() == null || hospital.getBannerLanding().equals("")) {
            hospital.setBannerLanding("banner.png");
        }
        if(hospital.getLogo() == null || hospital.getLogo().equals("")) {
            hospital.setLogo("logo.png");
        }
        return SUCCESS;
    }

    public String userAdmin(){
        userList = AccountManager.findByHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        return SUCCESS;
    }

    public String uploadLogo() {
        relativePath = FileLocationUtil.getLocation(file.getName()) + filename;
        String absolutePath = "../../../../opt/nfs/" + relativePath;
        saveFile(file, absolutePath);
        Hospital hospital = HospitalManager.findByHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        if(position.equals("logoLanding")) {
            hospital.setLogoLanding(relativePath);
        } else if(position.equals("bannerLanding")) {
            hospital.setBannerLanding(relativePath);
        } else if(position.equals("logo")) {
            hospital.setLogo(relativePath);
        }
        HospitalManager.update(hospital);
        return SUCCESS;
    }

    private void saveFile(File file, String path) {
        InputStream inputStream = null;
        OutputStream outputStream = null;
        try {
            inputStream = new FileInputStream(file);
            outputStream = new FileOutputStream(path);
            int temp;
            while ((temp = inputStream.read()) != -1) {
                outputStream.write(temp);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if(inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if(outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
    public String babySetAdmin(){
        bs = BabyManager.findBsByHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        return SUCCESS;
    }
    public String saveNewBabySchema(){
        bs = BabyManager.findBsByHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        if (bs == null){
            bs.setHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
            BabyManager.saveBabySchema(bs);
        }
        bs.setMotherIllness(motherIllness);
        bs.setParity(parity);
        bs.setPregnancy(pregnancy);
        bs.setDelivery(delivery);
        bs.setAsphyxia(asphyxia);
        bs.setJaundice(jaundice);
        bs.setBirthWeight(birthWeight);
        bs.setHavePumping(havePumping);
        bs.setFamilyHistory(familyHistory);
        bs.setIllnessHistory(illnessHistory);
        bs.setHeight(height);
        bs.setWeight(weight);
        bs.setHead(head);
        bs.setDiagnosis(diagnosis);
        bs.setRemarks(remarks);
        bs.setRelation(relation);
        bs.setAddress(address);
        bs.setPostcode(postcode);
        bs.setAccount(account);
        bs.setBloodtype(bloodtype);
        bs.setEducation(education);
        bs.setPreDelivery(preDelivery);
        bs.setDeformity(deformity);
        bs.setFrontalSuture(frontalSuture);
        bs.setOnlyChild(onlyChild);
        bs.setReason(reason);
        bs.setEvaluation(evaluation);
        bs.setOverview(overview);
        bs.setMotherBirthage(motherBirthage);
        bs.setMarriage(marriage);
        bs.setSit(sit);
        bs.setBust(bust);
        bs.setBmi(bmi);
        BabyManager.updateBabySchema(bs);
        isUpdate = true;
        return SUCCESS;
    }

    /*public String searchBabyByHoid(){
        babies = BabyManager.findBySearch(babyName, parentName, parentTel, 0);
        for(Baby b:babyList){
            Date d1 = b.getBirthday();
            Date d2 = new Date(new java.util.Date().getTime());
            int monthage = (differentdays(d1,d2))/30;
            b.setBirth(monthage);
        }
        return "success";
    }*/
    public List<User> getUserList() {
        return userList;
    }

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }

    public Hospital getHospital() {
        return hospital;
    }

    public void setHospital(Hospital hospital) {
        this.hospital = hospital;
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

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getRelativePath() {
        return relativePath;
    }

    public void setRelativePath(String relativePath) {
        this.relativePath = relativePath;
    }

    public Byte getMotherIllness() {
        return motherIllness;
    }

    public void setMotherIllness(Byte motherIllness) {
        this.motherIllness = motherIllness;
    }

    public Byte getParity() {
        return parity;
    }

    public void setParity(Byte parity) {
        this.parity = parity;
    }

    public Byte getPregnancy() {
        return pregnancy;
    }

    public void setPregnancy(Byte pregnancy) {
        this.pregnancy = pregnancy;
    }

    public Byte getDelivery() {
        return delivery;
    }

    public void setDelivery(Byte delivery) {
        this.delivery = delivery;
    }

    public Byte getAsphyxia() {
        return asphyxia;
    }

    public void setAsphyxia(Byte asphyxia) {
        this.asphyxia = asphyxia;
    }

    public Byte getJaundice() {
        return jaundice;
    }

    public void setJaundice(Byte jaundice) {
        this.jaundice = jaundice;
    }

    public Byte getBirthWeight() {
        return birthWeight;
    }

    public void setBirthWeight(Byte birthWeight) {
        this.birthWeight = birthWeight;
    }

    public Byte getHavePumping() {
        return havePumping;
    }

    public void setHavePumping(Byte havePumping) {
        this.havePumping = havePumping;
    }

    public Byte getFamilyHistory() {
        return familyHistory;
    }

    public void setFamilyHistory(Byte familyHistory) {
        this.familyHistory = familyHistory;
    }

    public Byte getIllnessHistory() {
        return illnessHistory;
    }

    public void setIllnessHistory(Byte illnessHistory) {
        this.illnessHistory = illnessHistory;
    }

    public Byte getHeight() {
        return height;
    }

    public void setHeight(Byte height) {
        this.height = height;
    }

    public Byte getWeight() {
        return weight;
    }

    public void setWeight(Byte weight) {
        this.weight = weight;
    }

    public Byte getHead() {
        return head;
    }

    public void setHead(Byte head) {
        this.head = head;
    }

    public Byte getDiagnosis() {
        return diagnosis;
    }

    public void setDiagnosis(Byte diagnosis) {
        this.diagnosis = diagnosis;
    }

    public Byte getRemarks() {
        return remarks;
    }

    public void setRemarks(Byte remarks) {
        this.remarks = remarks;
    }

    public Byte getRelation() {
        return relation;
    }

    public void setRelation(Byte relation) {
        this.relation = relation;
    }

    public Byte getAddress() {
        return address;
    }

    public void setAddress(Byte address) {
        this.address = address;
    }

    public Byte getPostcode() {
        return postcode;
    }

    public void setPostcode(Byte postcode) {
        this.postcode = postcode;
    }

    public Byte getAccount() {
        return account;
    }

    public void setAccount(Byte account) {
        this.account = account;
    }

    public Byte getBloodtype() {
        return bloodtype;
    }

    public void setBloodtype(Byte bloodtype) {
        this.bloodtype = bloodtype;
    }

    public Byte getEducation() {
        return education;
    }

    public void setEducation(Byte education) {
        this.education = education;
    }

    public Byte getPreDelivery() {
        return preDelivery;
    }

    public void setPreDelivery(Byte preDelivery) {
        this.preDelivery = preDelivery;
    }

    public Byte getDeformity() {
        return deformity;
    }

    public void setDeformity(Byte deformity) {
        this.deformity = deformity;
    }

    public Byte getFrontalSuture() {
        return frontalSuture;
    }

    public void setFrontalSuture(Byte frontalSuture) {
        this.frontalSuture = frontalSuture;
    }

    public Byte getOnlyChild() {
        return onlyChild;
    }

    public void setOnlyChild(Byte onlyChild) {
        this.onlyChild = onlyChild;
    }

    public Byte getReason() {
        return reason;
    }

    public void setReason(Byte reason) {
        this.reason = reason;
    }

    public Byte getEvaluation() {
        return evaluation;
    }

    public void setEvaluation(Byte evaluation) {
        this.evaluation = evaluation;
    }

    public Byte getOverview() {
        return overview;
    }

    public void setOverview(Byte overview) {
        this.overview = overview;
    }

    public Byte getMotherBirthage() {
        return motherBirthage;
    }

    public void setMotherBirthage(Byte motherBirthage) {
        this.motherBirthage = motherBirthage;
    }

    public Byte getMarriage() {
        return marriage;
    }

    public void setMarriage(Byte marriage) {
        this.marriage = marriage;
    }

    public Byte getSit() {
        return sit;
    }

    public void setSit(Byte sit) {
        this.sit = sit;
    }

    public Byte getBust() {
        return bust;
    }

    public void setBust(Byte bust) {
        this.bust = bust;
    }

    public Byte getBmi() {
        return bmi;
    }

    public void setBmi(Byte bmi) {
        this.bmi = bmi;
    }

    public BabySchema getBs() {
        return bs;
    }

    public void setBs(BabySchema bs) {
        this.bs = bs;
    }

    public Boolean getUpdate() {
        return isUpdate;
    }

    public void setUpdate(Boolean update) {
        isUpdate = update;
    }
}
