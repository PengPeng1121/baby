package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.AccountManager;
import com.free4lab.babycheckup.model.Baby;
import com.free4lab.babycheckup.model.BabySchema;
import com.free4lab.babycheckup.model.Parent;
import com.free4lab.babycheckup.model.User;
import com.opensymphony.xwork2.ActionContext;
import org.apache.commons.lang.StringUtils;

import java.text.ParsePosition;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
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
    private String babyBirth;
    private Integer testId;

    public String newBaby(){
        try{
            userlist = AccountManager.findByHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
            bs = BabyManager.findBsByHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        }catch (Exception e){
            e.printStackTrace();
        }
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
        int hoid = (Integer) ActionContext.getContext().getSession().get("hoid");
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
        Date babyBirthDay= null;
        if(!StringUtils.isEmpty(babyBirth)){
            try {
                babyBirthDay = simpleDateFormat.parse(babyBirth);
            } catch (Exception e) {

            }
        }
        if(testId==null || testId == 0){
            babyList = BabyManager.findBySearch(babyName, parentName, parentTel,babyBirthDay, hoid);
        }else if(testId != null){
            babyList = BabyManager.findBySearchWithTestId(babyName, parentName, parentTel,babyBirthDay, hoid,testId);
        }

        if(babyList!=null && babyList.size()>0){
            //默认显示5条
            if(babyList.size()>5){
                //移除
                babyList= babyList.subList(0,5);
            }
        }
        babyList = calculateMonthage(babyList);
        return "success";
    }

    public String searchBabyByHoid(){
        int hoid = (Integer) ActionContext.getContext().getSession().get("hoid");
        Date babyBirthDay= null;
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd ");
        if(!StringUtils.isEmpty(babyBirth)){
            try {
                ParsePosition pos = new ParsePosition(0);
                babyBirthDay = simpleDateFormat.parse(babyBirth,pos);
            } catch (Exception e) {

            }
        }
        if(testId==null || testId == 0){
            babyList = BabyManager.findBySearch(babyName, parentName, parentTel,babyBirthDay, hoid);
        }else if(testId != null){
            babyList = BabyManager.findBySearchWithTestId(babyName, parentName, parentTel,babyBirthDay, hoid,testId);
        }
        if(babyList!=null && babyList.size()>0){
            //默认显示5条
            if(babyList.size()>5){
                babyList =  babyList.subList(0,5);
            }
        }
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

    public String testMonthAgeDDST(){
        Date d2 = new Date(new java.util.Date().getTime());
        baby = BabyManager.findById(babyid);
        Date d1 = baby.getBirthday();
        int monthage = (differentdays(d1,d2))/30;
        if(monthage < 84){
            flag = true;
        }
        return "success";
    }

    //是否可以进行学龄测试-
    public String testMonthAge50(){
        baby = BabyManager.findById(babyid);
        Date d1 = baby.getBirthday();
        Date d2 = new Date(new java.util.Date().getTime());
        int monthage = (differentdays(d1,d2))/30;
        if(monthage <= 84  && 48 <= monthage ){
            flag = true;
        }else {
            flag = false;
        }
        return "success";
    }

    //是否可以进行婴儿-初中学生生活能力测试
    public String testMonthAge132(){
        baby = BabyManager.findById(babyid);
        Date d1 = baby.getBirthday();
        Date d2 = new Date(new java.util.Date().getTime());
        int monthage = (differentdays(d1,d2))/30;
        if( 6 <= monthage &&  monthage <= 204){
            flag = true;
        }else {
            flag = false;
        }
        return "success";
    }

    //是否可以进行认知测试
    public String testMonthAgeCognize(){
        baby = BabyManager.findById(babyid);
        Date d1 = baby.getBirthday();
        Date d2 = new Date(new java.util.Date().getTime());
        int day = (differentdays(d1,d2));
        if( 16 <= day  &&  compareDate(d1)){
            flag = true;
        }else {
            flag = false;
        }
        return "success";
    }

    public String testMonthAgeNei(){
        Date d2 = new Date(new java.util.Date().getTime());
        baby = BabyManager.findById(babyid);
        Date d1 = baby.getBirthday();
        int monthAge = (differentdays(d1,d2))/30;
        if(monthAge <= 216 && 12 <= monthAge){
            flag = true;
        }
        return "success";
    }

    //0~18岁
    public String testMonthAgeGroup(){
        Date d2 = new Date(new java.util.Date().getTime());
        baby = BabyManager.findById(babyid);
        Date d1 = baby.getBirthday();
        int monthAge = (int)Math.round((differentdays(d1,d2))/30.4);
        if(monthAge <= 216 && 0 <= monthAge){
            flag = true;
        }
        return "success";
    }

    //0~12岁
    public String testMonthAgeQiZhi(){
        Date d2 = new Date(new java.util.Date().getTime());
        baby = BabyManager.findById(babyid);
        Date d1 = baby.getBirthday();
        int monthAge = (int)Math.round((differentdays(d1,d2))/30.4);
        if(monthAge < 156 && 0 <= monthAge){
            flag = true;
        }
        return "success";
    }

    //3~12岁
    public String testMonthAgeFeel(){
        Date d2 = new Date(new java.util.Date().getTime());
        baby = BabyManager.findById(babyid);
        Date d1 = baby.getBirthday();
        int monthAge = (int)Math.round((differentdays(d1,d2))/30.4);
        if(monthAge < 156 && 36 <= monthAge){
            flag = true;
        }
        return "success";
    }

    public int differentdays(Date d1, Date d2){
        int days = (int)((d2.getTime()-d1.getTime())/(1000*3600*24));
        return days;
    }

    //比较出生日期和前42个月零15天
    //生日大于前 满足
    private boolean compareDate(Date birthday){
        int day = (int)((birthday.getTime()-getDate().getTime())/(1000*3600*24));
        if(day>=0){
            return true;
        }
        return false;
    }

    //获取前42个月零15天
    public Date getDate(){
        Date today = new Date();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(today);
        calendar.add(Calendar.YEAR, -3);
        calendar.add(Calendar.MONTH, -6);
        calendar.add(Calendar.DATE, -15);
        Date date = calendar.getTime();
        return date;
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

    public String getBabyBirth() {
        return babyBirth;
    }

    public void setBabyBirth(String babyBirth) {
        this.babyBirth = babyBirth;
    }

    public Integer getTestId() {
        return testId;
    }

    public void setTestId(Integer testId) {
        this.testId = testId;
    }
}
