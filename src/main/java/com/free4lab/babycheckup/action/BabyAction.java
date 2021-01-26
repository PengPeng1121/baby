package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.dto.BabyUpdateDto;
import com.free4lab.babycheckup.manager.BabyManager;
import com.free4lab.babycheckup.manager.AccountManager;
import com.free4lab.babycheckup.manager.BabyTestRecordManager;
import com.free4lab.babycheckup.model.*;
import com.opensymphony.xwork2.ActionContext;
import org.apache.commons.lang.StringUtils;
import org.springframework.util.CollectionUtils;

import java.text.ParsePosition;
import java.util.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/**
 * Created by Administrator on 2017/6/26.
 */
public class BabyAction {

    private List<User> userlist = new ArrayList<User>();
    private BabySchema bs = new BabySchema();
    //返回的数组
    private Map<String,Object> dataMap;

    private Baby baby;
    private String birthday;
    private Parent father;
    private Parent mother;
    private String father_birth;
    private String mother_birth;
    private String baby_birth;
    private String frontalSuture1;
    private String frontalSuture2;
    private int babyid;
    private Boolean flag;
    private String babyName;
    private String parentName;
    private String lastTestTimeEnd;
    private String lastTestTimeBegin;
    private String parentTel;
    private List<Baby> babyList;
    private static final int PAGE_SIZE = 10;//用于分页
    private int pageNum;//用于分页
    private int page;//用于分页
    private int babyNumber;
    private String babyBirth;
    private Integer testId;
    private Integer resultId;

    private BabyUpdateDto babyUpdate;

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
        // 如果没有传 默认1
        if(page==0){
            page = 1;
        }
        if(testId==null || testId == 0){
            List<Baby> babyAllList = BabyManager.findBySearch(babyName, parentName, parentTel,babyBirthDay,lastTestTimeEnd,lastTestTimeBegin, hoid, 0, 0,false);
            if(!CollectionUtils.isEmpty(babyAllList)){
                babyNumber = babyAllList.size();
                if(babyNumber % PAGE_SIZE != 0){
                    pageNum =  (babyNumber / PAGE_SIZE) + 1;
                }else {
                    pageNum =  babyNumber / PAGE_SIZE;
                }
                babyList = BabyManager.findBySearch(babyName, parentName, parentTel,babyBirthDay,lastTestTimeEnd,lastTestTimeBegin, hoid, page, PAGE_SIZE,true);
            }else {
                babyNumber = 0;
            }
        }else if(testId != null){
            // 查询所有
            List<Baby> babyAllList = BabyManager.findBySearchWithTestId(babyName, parentName, parentTel,babyBirthDay, lastTestTimeEnd,lastTestTimeBegin,hoid,testId, 0,0,false);
            if(!CollectionUtils.isEmpty(babyAllList)){
                babyNumber = babyAllList.size();
                if(babyNumber % PAGE_SIZE != 0){
                    pageNum =  (babyNumber / PAGE_SIZE) + 1;
                }else {
                    pageNum =  babyNumber / PAGE_SIZE;
                }
                babyList = BabyManager.findBySearchWithTestId(babyName, parentName, parentTel,babyBirthDay,lastTestTimeEnd,lastTestTimeBegin, hoid,testId, page, PAGE_SIZE,true);
            }else {
                babyNumber = 0;
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
        // 如果没有传 默认1
        if(page==0){
            page = 1;
        }
        if(testId==null || testId == 0){
            List<Baby> babyAllList = BabyManager.findBySearch(babyName, parentName, parentTel,babyBirthDay,lastTestTimeEnd,lastTestTimeBegin, hoid, 0, 0,false);
            if(!CollectionUtils.isEmpty(babyAllList)){
                babyNumber = babyAllList.size();
                if(babyNumber % PAGE_SIZE != 0){
                    pageNum =  (babyNumber / PAGE_SIZE) + 1;
                }else {
                    pageNum =  babyNumber / PAGE_SIZE;
                }
                babyList = BabyManager.findBySearch(babyName, parentName, parentTel,babyBirthDay,lastTestTimeEnd,lastTestTimeBegin, hoid, page, PAGE_SIZE,true);
            }else {
                babyNumber = 0;
            }
        }else if(testId != null){
            // 查询所有
            List<Baby> babyAllList = BabyManager.findBySearchWithTestId(babyName, parentName, parentTel,babyBirthDay,lastTestTimeEnd,lastTestTimeBegin, hoid,testId, 0, 0,false);
            if(!CollectionUtils.isEmpty(babyAllList)){
                babyNumber = babyAllList.size();
                if(babyNumber % PAGE_SIZE != 0){
                    pageNum =  (babyNumber / PAGE_SIZE) + 1;
                }else {
                    pageNum =  babyNumber / PAGE_SIZE;
                }

                babyList = BabyManager.findBySearchWithTestId(babyName, parentName, parentTel,babyBirthDay,lastTestTimeEnd,lastTestTimeBegin, hoid,testId, page, PAGE_SIZE,true);
            }else {
                babyNumber = 0;
            }
        }

        babyList = calculateMonthage(babyList);
        return "success";
    }

    //回显baby信息
    public String getBabyById(){
        baby = BabyManager.findById(babyid);
        if(baby != null){
            SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd ");
            if(baby.getFather().getBirth()!=null){
                father_birth = simpleDateFormat.format(baby.getFather().getBirth());
            }
            if(baby.getMother().getBirth()!=null){
                mother_birth = simpleDateFormat.format(baby.getMother().getBirth());
            }
            if(baby.getBirthday()!=null){
                baby_birth = simpleDateFormat.format(baby.getBirthday());
            }
        }

        dataMap = new HashMap<String, Object>();
        dataMap.put("baby", baby);
        dataMap.put("baby_birth", baby_birth);
        dataMap.put("father_birth", father_birth);
        dataMap.put("mother_birth", mother_birth);

        return "success";
    }

    //跳转到病例编辑页
    public String editBabyInfo(){
        userlist = AccountManager.findByHoid((Integer) ActionContext.getContext().getSession().get("hoid"));
        return "success";
    }

    //编辑病例
    public String editBaby(){
        System.out.println("--------------------start-----------");

        System.out.println(babyUpdate.toString());

        //需要修改的信息
        Baby updateBaby = BabyManager.findById(babyUpdate.getBabyId());

        if(updateBaby!=null){
            //生日
            updateBaby.setBirthday(babyUpdate.getBabyBirth());

            // 孩子的性别
            if(babyUpdate.getBabyGender()!=null){
                updateBaby.setGender(babyUpdate.getBabyGender().byteValue());
            }

            //孩子的名字
            updateBaby.setName(babyUpdate.getBabyName());

            //页面选择的提交医生
            if(babyUpdate.getDoctorId()!=null){
                updateBaby.setUserid(babyUpdate.getDoctorId());
            }
            //孩子民族
            updateBaby.setNation(babyUpdate.getBabyNation());

            //分娩方式
            if(StringUtils.isNotEmpty(babyUpdate.getBabyDelivery())){
                updateBaby.setDelivery(babyUpdate.getBabyDelivery());
            }

            //孩子出生日期
            updateBaby.setBirthday(babyUpdate.getBabyBirth());

            //孩子父亲信息
            Parent updateBabyFather = updateBaby.getFather();
            if(updateBabyFather != null){
                //孩子父亲名称
                updateBabyFather.setName(babyUpdate.getFatherName());
                //孩子父亲职业
                updateBabyFather.setCareer(babyUpdate.getFatherCareer());
                //孩子父亲生日
                updateBabyFather.setBirth(babyUpdate.getFatherBirth());
                //孩子父亲电话
                updateBabyFather.setTel(babyUpdate.getFatherTel());
                //孩子父亲受教育程度
                updateBabyFather.setEducation(babyUpdate.getFatherEducation());
                //孩子父亲工作时间
                if(babyUpdate.getFatherWorkTime()!=null){
                    updateBabyFather.setWorktime(babyUpdate.getFatherWorkTime().byteValue());
                }
                //孩子父亲邮箱
                updateBabyFather.setEmail(babyUpdate.getFatherEmail());
            }else {
                System.out.println("----------------------没有找到孩子父亲的信息---，babyId("+ babyUpdate.getBabyId() +")------");
            }

            //孩子母亲信息
            Parent updateBabyMother = updateBaby.getMother();
            if(updateBabyMother != null){
                //孩子母亲名称
                updateBabyMother.setName(babyUpdate.getMotherName());
                //孩子母亲职业
                updateBabyMother.setCareer(babyUpdate.getMotherCarrer());
                //孩子母亲生日
                updateBabyMother.setBirth(babyUpdate.getMotherBirth());
                //孩子母亲电话
                updateBabyMother.setTel(babyUpdate.getMotherTel());
                //孩子母亲受教育程度
                updateBabyMother.setEducation(babyUpdate.getMotherEducation());
                //孩子母亲工作时间
                if(babyUpdate.getMotherWorkTime()!=null){
                    updateBabyMother.setWorktime(babyUpdate.getMotherWorkTime().byteValue());
                }
                //孩子母亲邮箱
                updateBabyMother.setEmail(babyUpdate.getMotherEmail());
            }else {
                System.out.println("----------------------没有找到孩子母亲的信息---，babyId("+ babyUpdate.getBabyId() +")------");
            }

            //修改
            BabyManager.update(updateBaby,updateBabyFather,updateBabyMother);
        }
        babyid = babyUpdate.getBabyId();
        System.out.println("----------------------end---------");
        return "success";
    }


    // 刷新宝宝最近测试时间
    public String refreshExamTime(){
        Baby updateBaby = BabyManager.findById(babyid);
        if(null != updateBaby){
            //保存
            updateBaby.setLastTestTime(new Date());
            BabyManager.update(updateBaby,null,null);
            if(null != testId && null != resultId){
                BabyTestRecord babyTestRecord = new BabyTestRecord();
                babyTestRecord.setBabyId(babyid);
                babyTestRecord.setTestId(testId);
                babyTestRecord.setResultId(resultId);
                babyTestRecord.setHospitalId((Integer) ActionContext.getContext().getSession().get("hoid"));
                babyTestRecord.setTestUserId((Integer) ActionContext.getContext().getSession().get("userid"));
                babyTestRecord.setUpdateUser((String) ActionContext.getContext().getSession().get("username"));
                babyTestRecord.setCreateUser((String) ActionContext.getContext().getSession().get("username"));
                babyTestRecord.setUpdateTime(new java.util.Date());
                babyTestRecord.setCreateTime(new java.util.Date());
                BabyTestRecordManager.save(babyTestRecord);
            }
        }
        return "success";
    }


    public String testMonthage(){
        baby = BabyManager.findById(babyid);
        Date d1 = baby.getBirthday();
        Date d2 = new Date(new java.util.Date().getTime());
        int monthage = (differentdays(d1,d2))/30;
        if(monthage < 217){
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

    //0~6岁
    public String testMonthAgeGroup2020(){
        Date d2 = new Date(new java.util.Date().getTime());
        baby = BabyManager.findById(babyid);
        Date d1 = baby.getBirthday();
        int monthAge = (int)Math.round((differentdays(d1,d2))/30.4);
        if(monthAge <= 60 && 0 <= monthAge){
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

    //0~12岁
    public String testMonthAgePhysical(){
        Date d2 = new Date(new java.util.Date().getTime());
        baby = BabyManager.findById(babyid);
        Date d1 = baby.getBirthday();
        int monthAge = (int)Math.round((differentdays(d1,d2))/30.4);
        if(monthAge < 156 && 0 <= monthAge){
            flag = true;
        }
        return "success";
    }

    //0~12岁
    public String testMonthAgeSummary(){
        Date d2 = new Date(new java.util.Date().getTime());
        baby = BabyManager.findById(babyid);
        Date d1 = baby.getBirthday();
        int monthAge = (int)Math.round((differentdays(d1,d2))/30.4);
        if(monthAge < 156 && 0 <= monthAge){
            flag = true;
        }
        return "success";
    }

    //0~12岁
    public String testMonthAgeAllergy(){
        Date d2 = new Date(new java.util.Date().getTime());
        baby = BabyManager.findById(babyid);
        Date d1 = baby.getBirthday();
        int monthAge = (int)Math.round((differentdays(d1,d2))/30.4);
        if(monthAge < 156 && 0 <= monthAge){
            flag = true;
        }
        return "success";
    }


    //0~12岁
    public String testMonthAgeBasic1(){
        Date d2 = new Date(new java.util.Date().getTime());
        baby = BabyManager.findById(babyid);
        Date d1 = baby.getBirthday();
        int monthAge = (int)Math.round((differentdays(d1,d2))/30.4);
        if(monthAge < 156 && 0 <= monthAge){
            flag = true;
        }
        return "success";
    }


    //0~12岁
    public String testMonthAgeBasic2(){
        Date d2 = new Date(new java.util.Date().getTime());
        baby = BabyManager.findById(babyid);
        Date d1 = baby.getBirthday();
        int monthAge = (int)Math.round((differentdays(d1,d2))/30.4);
        if(monthAge < 156 && 0 <= monthAge){
            flag = true;
        }
        return "success";
    }

    // 气质2020
    public String testMonthageQiZhi2020(){
        baby = BabyManager.findById(babyid);
        Date d1 = baby.getBirthday();
        Date d2 = new Date(new java.util.Date().getTime());
        int monthAge = (int)Math.round((differentdays(d1,d2))/30.4);
        if(monthAge < 73){
            flag = true;
        }
        return "success";
    }

    // 牙齿
    public String testMonthageTooth(){
        baby = BabyManager.findById(babyid);
        Date d1 = baby.getBirthday();
        Date d2 = new Date(new java.util.Date().getTime());
        int monthAge = (int)Math.round((differentdays(d1,d2))/30.4);
        if(monthAge < 156){
            flag = true;
        }
        return "success";
    }

    // 喂养
    public String testMonthageFeed(){
        baby = BabyManager.findById(babyid);
        Date d1 = baby.getBirthday();
        Date d2 = new Date(new java.util.Date().getTime());
        int monthAge = (int)Math.round((differentdays(d1,d2))/30.4);
        if(monthAge < 156){
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
        if(CollectionUtils.isEmpty(babyList)){
            return babyList;
        }
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

    public Map<String, Object> getDataMap() {
        return dataMap;
    }

    public void setDataMap(Map<String, Object> dataMap) {
        this.dataMap = dataMap;
    }

    public String getBaby_birth() {
        return baby_birth;
    }

    public void setBaby_birth(String baby_birth) {
        this.baby_birth = baby_birth;
    }

    public BabyUpdateDto getBabyUpdate() {
        return babyUpdate;
    }

    public void setBabyUpdate(BabyUpdateDto babyUpdate) {
        this.babyUpdate = babyUpdate;
    }

    public Integer getResultId() {
        return resultId;
    }

    public void setResultId(Integer resultId) {
        this.resultId = resultId;
    }

    public String getLastTestTimeEnd() {
        return lastTestTimeEnd;
    }

    public void setLastTestTimeEnd(String lastTestTimeEnd) {
        this.lastTestTimeEnd = lastTestTimeEnd;
    }

    public String getLastTestTimeBegin() {
        return lastTestTimeBegin;
    }

    public void setLastTestTimeBegin(String lastTestTimeBegin) {
        this.lastTestTimeBegin = lastTestTimeBegin;
    }
}
