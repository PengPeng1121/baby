package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.AccountManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.BabySchema;
import com.free4lab.babycheckup.model.Parent;
import com.free4lab.babycheckup.model.User;
import com.opensymphony.xwork2.ActionContext;
import org.apache.commons.lang.StringUtils;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/6/26.
 */
public class BabyAction {

    private List<User> userlist = new ArrayList<User>();
    private BabySchema bs = new BabySchema();


    private Baby baby;
    private String birthday;
    private Parent father;
    private Parent mother;
    private String father_birth;
    private String mother_birth;
    private String frontalSuture1;
    private String frontalSuture2;
    private int babyid;
    private Boolean flag;
    private String babyName;
    private String parentName;
    private String parentTel;
    private List<Baby> babyList;
    private static final int PAGE_SIZE = 10;//用于分页
    private int pageNum;//用于分页
    private int page;//用于分页
    private int babyNumber;

    public String newBaby(){
        userlist = AccountManager.findByHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        bs = BabyManager.findBsByHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        return "success";
    }

    public String saveBaby() throws ParseException {
        baby.setHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        baby.setUserid((Integer) ActionContext.getContext().getSession().get("userid"));
        baby.setTime(new java.sql.Timestamp(System.currentTimeMillis()));
        baby.setBirthday(new java.sql.Date(new SimpleDateFormat("yyyy-MM-dd").parse(birthday).getTime()));
        List<String> list = new ArrayList<String>();
        list.add(frontalSuture1);
        list.add(frontalSuture2);
        String frontalSuture = StringUtils.join(list,",");
        baby.setFrontalSuture(frontalSuture);

        if(father_birth != null&& father_birth.length()>0){
            father.setBirth(new java.sql.Date(new SimpleDateFormat("yyyy-MM-dd").parse(father_birth).getTime()));
        }
        if(mother_birth != null&& mother_birth.length()>0){
            mother.setBirth(new java.sql.Date(new SimpleDateFormat("yyyy-MM-dd").parse(mother_birth).getTime()));
        }

        if(mother != null && father != null){
            BabyManager.save(baby, father, mother);
        } else if (father != null && mother == null){
            BabyManager.saveBabyAndFather(baby,father);
        } else if (father == null && mother != null){
            BabyManager.saveBabyAndFather(baby,mother);
        }

        babyid = baby.getBabyid();
        return "success";
    }

    public String searchBaby(){
        babyList = BabyManager.findBySearch(babyName, parentName, parentTel, 0);
        babyList = calculateMonthage(babyList);
        return "success";
    }

    public String searchBabyByHoid(){
        int hoid = (Integer) ActionContext.getContext().getSession().get("hoid");
        babyList = BabyManager.findBySearch(babyName, parentName, parentTel, hoid);
        babyList = calculateMonthage(babyList);
        return "success";
    }


    public String testMonthage(){
        baby = BabyManager.findById(babyid);
        Date d1 = baby.getBirthday();
        Date d2 = new Date(new java.util.Date().getTime());
        int monthage = (differentdays(d1,d2))/30;
        if(monthage < 84){
            flag = true;
        }
        return "success";
    }
    public int differentdays(Date d1, Date d2){
        int days = (int)((d2.getTime()-d1.getTime())/(1000*3600*24));
        return days;
    }

    public List<Baby> calculateMonthage(List<Baby> babyList){
        for(Baby b:babyList){
            Date d1 = b.getBirthday();
            Date d2 = new Date(new java.util.Date().getTime());
            int monthage = (differentdays(d1,d2))/30;
            b.setBirth(monthage);
        }
        return babyList;
    }

    public String searchAllBaby(){
        int hid = (Integer) ActionContext.getContext().getSession().get("hoid");
        babyNumber = BabyManager.findallBabyNumber(hid);
        if(babyNumber % PAGE_SIZE != 0){
            pageNum =  (babyNumber / PAGE_SIZE) + 1;
        }else {
            pageNum =  babyNumber / PAGE_SIZE;
        }

        babyList = BabyManager.findAllBaby(hid, page, PAGE_SIZE);
        babyList = calculateMonthage(babyList);
        return "success";
    }

    public List<User> getUserlist() {
        return userlist;
    }
    public void setUserlist(List<User> userlist) {
        this.userlist = userlist;
    }
    public Baby getBaby() {
        return baby;
    }
    public void setBaby(Baby baby) {
        this.baby = baby;
    }
    public String getBirthday() {
        return birthday;
    }
    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }
    public String getBabyName() {
        return babyName;
    }
    public void setBabyName(String babyName) {
        this.babyName = babyName;
    }
    public String getParentName() {
        return parentName;
    }
    public void setParentName(String parentName) {
        this.parentName = parentName;
    }
    public String getParentTel() {
        return parentTel;
    }
    public void setParentTel(String parentTel) {
        this.parentTel = parentTel;
    }
    public List<Baby> getBabyList() {
        return babyList;
    }
    public void setBabyList(List<Baby> babyList) {
        this.babyList = babyList;
    }

    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    public int getPage() {
        return page;
    }
    public void setPage(int page) {
        this.page = page;
    }


    public Parent getFather() {
        return father;
    }

    public void setFather(Parent father) {
        this.father = father;
    }

    public Parent getMother() {
        return mother;
    }

    public void setMother(Parent mother) {
        this.mother = mother;
    }

    public String getFather_birth() {
        return father_birth;
    }

    public void setFather_birth(String father_birth) {
        this.father_birth = father_birth;
    }

    public String getMother_birth() {
        return mother_birth;
    }

    public void setMother_birth(String mother_birth) {
        this.mother_birth = mother_birth;
    }

    public String getFrontalSuture1() {
        return frontalSuture1;
    }

    public void setFrontalSuture1(String frontalSuture1) {
        this.frontalSuture1 = frontalSuture1;
    }

    public String getFrontalSuture2() {
        return frontalSuture2;
    }

    public void setFrontalSuture2(String frontalSuture2) {
        this.frontalSuture2 = frontalSuture2;
    }

    public int getBabyid() {
        return babyid;
    }

    public void setBabyid(int babyid) {
        this.babyid = babyid;
    }

    public BabySchema getBs() {
        return bs;
    }

    public void setBs(BabySchema bs) {
        this.bs = bs;
    }

    public Boolean getFlag() {
        return flag;
    }

    public void setFlag(Boolean flag) {
        this.flag = flag;
    }

    public int getBabyNumber() {
        return babyNumber;
    }

    public void setBabyNumber(int babyNumber) {
        this.babyNumber = babyNumber;
    }
}
