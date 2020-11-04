package com.free4lab.babycheckup.model;

import javax.persistence.*;
import java.sql.Date;
import java.sql.Timestamp;

@Entity
@Table(name = "baby", schema = "babycheckup")
public class Baby {
    private int babyid;
    private byte gender;
    private String name;
    private int hoid;
    private int userid;
    private Timestamp time;
    private java.util.Date lastTestTime;
    private Date birthday;
    private int birth;
    private String nation;
    private Integer fatherid;
    private Integer motherid;
    private String motherIllness;
    private Byte parity;
    private Byte pregnancy;
    private String delivery;
    private Byte asphyxia;
    private Integer birthWeight;
    private String jaundice;
    private Byte havePumping;
    private Byte pumpingTimes;
    private Byte pumpingBegin;
    private String familyHistory;
    private String illnessHistory;
    private Byte height;
    private Double weight;
    private Byte head;
    private String diagnosis;
    private String remarks;
    private String relation;
    private String province;
    private String city;
    private String address;
    private String postcode;
    private String account;
    private String bloodtype;
    private String education;
    private Byte preDelivery;
    private String deformity;
    private String frontalSuture;
    private Byte onlyChild;
    private String reason;
    private String evaluation;
    private String overview;
    private Byte motherBirthage;
    private String marriage;
    private Byte sit;
    private Byte bust;
    private Double bmi;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "babyid", nullable = false)
    public int getBabyid() {
        return babyid;
    }

    public void setBabyid(int babyid) {
        this.babyid = babyid;
    }

    @Basic
    @Column(name = "gender", nullable = false)
    public byte getGender() {
        return gender;
    }

    public void setGender(byte gender) {
        this.gender = gender;
    }

    @Basic
    @Column(name = "name", nullable = false, length = 20)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "hoid", nullable = false)
    public int getHoid() {
        return hoid;
    }

    public void setHoid(int hoid) {
        this.hoid = hoid;
    }

    @Basic
    @Column(name = "userid", nullable = false)
    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    @Basic
    @Column(name = "time", nullable = false)
    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    @Transient
    public int getBirth() {
        return birth;
    }

    public void setBirth(int birth) {
        this.birth = birth;
    }

    @Basic
    @Column(name = "birthday", nullable = false)
    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    @Basic
    @Column(name = "nation", nullable = false, length = 12)
    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    @Basic
    @Column(name = "fatherid", nullable = true)
    public Integer getFatherid() {
        return fatherid;
    }

    public void setFatherid(Integer fatherid) {
        this.fatherid = fatherid;
    }

    @Basic
    @Column(name = "motherid", nullable = true)
    public Integer getMotherid() {
        return motherid;
    }

    public void setMotherid(Integer motherid) {
        this.motherid = motherid;
    }

    @Basic
    @Column(name = "mother_illness", nullable = true, length = 200)
    public String getMotherIllness() {
        return motherIllness;
    }

    public void setMotherIllness(String motherIllness) {
        this.motherIllness = motherIllness;
    }

    @Basic
    @Column(name = "parity", nullable = true)
    public Byte getParity() {
        return parity;
    }

    public void setParity(Byte parity) {
        this.parity = parity;
    }

    @Basic
    @Column(name = "pregnancy", nullable = true)
    public Byte getPregnancy() {
        return pregnancy;
    }

    public void setPregnancy(Byte pregnancy) {
        this.pregnancy = pregnancy;
    }

    @Basic
    @Column(name = "delivery", nullable = true, length = 10)
    public String getDelivery() {
        return delivery;
    }

    public void setDelivery(String delivery) {
        this.delivery = delivery;
    }

    @Basic
    @Column(name = "asphyxia", nullable = true)
    public Byte getAsphyxia() {
        return asphyxia;
    }

    public void setAsphyxia(Byte asphyxia) {
        this.asphyxia = asphyxia;
    }

    @Basic
    @Column(name = "birth_weight", nullable = true)
    public Integer getBirthWeight() {
        return birthWeight;
    }

    public void setBirthWeight(Integer birthWeight) {
        this.birthWeight = birthWeight;
    }

    @Basic
    @Column(name = "jaundice", nullable = true, length = 10)
    public String getJaundice() {
        return jaundice;
    }

    public void setJaundice(String jaundice) {
        this.jaundice = jaundice;
    }

    @Basic
    @Column(name = "have_pumping", nullable = true)
    public Byte getHavePumping() {
        return havePumping;
    }

    public void setHavePumping(Byte havePumping) {
        this.havePumping = havePumping;
    }

    @Basic
    @Column(name = "pumping_times", nullable = true)
    public Byte getPumpingTimes() {
        return pumpingTimes;
    }

    public void setPumpingTimes(Byte pumpingTimes) {
        this.pumpingTimes = pumpingTimes;
    }

    @Basic
    @Column(name = "pumping_begin", nullable = true)
    public Byte getPumpingBegin() {
        return pumpingBegin;
    }

    public void setPumpingBegin(Byte pumpingBegin) {
        this.pumpingBegin = pumpingBegin;
    }

    @Basic
    @Column(name = "family_history", nullable = true, length = 200)
    public String getFamilyHistory() {
        return familyHistory;
    }

    public void setFamilyHistory(String familyHistory) {
        this.familyHistory = familyHistory;
    }

    @Basic
    @Column(name = "illness_history", nullable = true, length = 200)
    public String getIllnessHistory() {
        return illnessHistory;
    }

    public void setIllnessHistory(String illnessHistory) {
        this.illnessHistory = illnessHistory;
    }

    @Basic
    @Column(name = "height", nullable = true)
    public Byte getHeight() {
        return height;
    }

    public void setHeight(Byte height) {
        this.height = height;
    }

    @Basic
    @Column(name = "weight", nullable = true, precision = 0)
    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }

    @Basic
    @Column(name = "head", nullable = true)
    public Byte getHead() {
        return head;
    }

    public void setHead(Byte head) {
        this.head = head;
    }

    @Basic
    @Column(name = "diagnosis", nullable = true, length = 200)
    public String getDiagnosis() {
        return diagnosis;
    }

    public void setDiagnosis(String diagnosis) {
        this.diagnosis = diagnosis;
    }

    @Basic
    @Column(name = "remarks", nullable = true, length = 200)
    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    @Basic
    @Column(name = "relation", nullable = true, length = 20)
    public String getRelation() {
        return relation;
    }

    public void setRelation(String relation) {
        this.relation = relation;
    }

    @Basic
    @Column(name = "province", nullable = true, length = 10)
    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    @Basic
    @Column(name = "city", nullable = true, length = 20)
    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    @Basic
    @Column(name = "address", nullable = true, length = 100)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Basic
    @Column(name = "postcode", nullable = true, length = 10)
    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    @Basic
    @Column(name = "account", nullable = true, length = 10)
    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    @Basic
    @Column(name = "bloodtype", nullable = true, length = 10)
    public String getBloodtype() {
        return bloodtype;
    }

    public void setBloodtype(String bloodtype) {
        this.bloodtype = bloodtype;
    }

    @Basic
    @Column(name = "education", nullable = true, length = 16)
    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    @Basic
    @Column(name = "pre_delivery", nullable = true)
    public Byte getPreDelivery() {
        return preDelivery;
    }

    public void setPreDelivery(Byte preDelivery) {
        this.preDelivery = preDelivery;
    }

    @Basic
    @Column(name = "deformity", nullable = true, length = 20)
    public String getDeformity() {
        return deformity;
    }

    public void setDeformity(String deformity) {
        this.deformity = deformity;
    }

    @Basic
    @Column(name = "frontal_suture", nullable = true, length = 10)
    public String getFrontalSuture() {
        return frontalSuture;
    }

    public void setFrontalSuture(String frontalSuture) {
        this.frontalSuture = frontalSuture;
    }

    @Basic
    @Column(name = "only_child", nullable = true)
    public Byte getOnlyChild() {
        return onlyChild;
    }

    public void setOnlyChild(Byte onlyChild) {
        this.onlyChild = onlyChild;
    }

    @Basic
    @Column(name = "reason", nullable = true, length = 100)
    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    @Basic
    @Column(name = "evaluation", nullable = true, length = 100)
    public String getEvaluation() {
        return evaluation;
    }

    public void setEvaluation(String evaluation) {
        this.evaluation = evaluation;
    }

    @Basic
    @Column(name = "overview", nullable = true, length = 100)
    public String getOverview() {
        return overview;
    }

    public void setOverview(String overview) {
        this.overview = overview;
    }

    @Basic
    @Column(name = "mother_birthage", nullable = true)
    public Byte getMotherBirthage() {
        return motherBirthage;
    }

    public void setMotherBirthage(Byte motherBirthage) {
        this.motherBirthage = motherBirthage;
    }

    @Basic
    @Column(name = "marriage", nullable = true, length = 10)
    public String getMarriage() {
        return marriage;
    }

    public void setMarriage(String marriage) {
        this.marriage = marriage;
    }

    @Basic
    @Column(name = "sit", nullable = true)
    public Byte getSit() {
        return sit;
    }

    public void setSit(Byte sit) {
        this.sit = sit;
    }

    @Basic
    @Column(name = "bust", nullable = true)
    public Byte getBust() {
        return bust;
    }

    public void setBust(Byte bust) {
        this.bust = bust;
    }

    @Basic
    @Column(name = "bmi", nullable = true, precision = 0)
    public Double getBmi() {
        return bmi;
    }

    public void setBmi(Double bmi) {
        this.bmi = bmi;
    }

    @Basic
    @Column(name = "last_test_time")
    public java.util.Date getLastTestTime() {
        return lastTestTime;
    }

    public void setLastTestTime(java.util.Date lastTestTime) {
        this.lastTestTime = lastTestTime;
    }

    private Parent father;
    private Parent mother;

    @Transient
    public Parent getFather() {
        return father;
    }
    public void setFather(Parent father) {
        this.father = father;
    }

    @Transient
    public Parent getMother() {
        return mother;
    }
    public void setMother(Parent mother) {
        this.mother = mother;
    }
}
