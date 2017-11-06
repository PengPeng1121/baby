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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Baby baby = (Baby) o;

        if (babyid != baby.babyid) return false;
        if (gender != baby.gender) return false;
        if (hoid != baby.hoid) return false;
        if (userid != baby.userid) return false;
        if (name != null ? !name.equals(baby.name) : baby.name != null) return false;
        if (time != null ? !time.equals(baby.time) : baby.time != null) return false;
        if (birthday != null ? !birthday.equals(baby.birthday) : baby.birthday != null) return false;
        if (nation != null ? !nation.equals(baby.nation) : baby.nation != null) return false;
        if (fatherid != null ? !fatherid.equals(baby.fatherid) : baby.fatherid != null) return false;
        if (motherid != null ? !motherid.equals(baby.motherid) : baby.motherid != null) return false;
        if (motherIllness != null ? !motherIllness.equals(baby.motherIllness) : baby.motherIllness != null)
            return false;
        if (parity != null ? !parity.equals(baby.parity) : baby.parity != null) return false;
        if (pregnancy != null ? !pregnancy.equals(baby.pregnancy) : baby.pregnancy != null) return false;
        if (delivery != null ? !delivery.equals(baby.delivery) : baby.delivery != null) return false;
        if (asphyxia != null ? !asphyxia.equals(baby.asphyxia) : baby.asphyxia != null) return false;
        if (birthWeight != null ? !birthWeight.equals(baby.birthWeight) : baby.birthWeight != null) return false;
        if (jaundice != null ? !jaundice.equals(baby.jaundice) : baby.jaundice != null) return false;
        if (havePumping != null ? !havePumping.equals(baby.havePumping) : baby.havePumping != null) return false;
        if (pumpingTimes != null ? !pumpingTimes.equals(baby.pumpingTimes) : baby.pumpingTimes != null) return false;
        if (pumpingBegin != null ? !pumpingBegin.equals(baby.pumpingBegin) : baby.pumpingBegin != null) return false;
        if (familyHistory != null ? !familyHistory.equals(baby.familyHistory) : baby.familyHistory != null)
            return false;
        if (illnessHistory != null ? !illnessHistory.equals(baby.illnessHistory) : baby.illnessHistory != null)
            return false;
        if (height != null ? !height.equals(baby.height) : baby.height != null) return false;
        if (weight != null ? !weight.equals(baby.weight) : baby.weight != null) return false;
        if (head != null ? !head.equals(baby.head) : baby.head != null) return false;
        if (diagnosis != null ? !diagnosis.equals(baby.diagnosis) : baby.diagnosis != null) return false;
        if (remarks != null ? !remarks.equals(baby.remarks) : baby.remarks != null) return false;
        if (relation != null ? !relation.equals(baby.relation) : baby.relation != null) return false;
        if (province != null ? !province.equals(baby.province) : baby.province != null) return false;
        if (city != null ? !city.equals(baby.city) : baby.city != null) return false;
        if (address != null ? !address.equals(baby.address) : baby.address != null) return false;
        if (postcode != null ? !postcode.equals(baby.postcode) : baby.postcode != null) return false;
        if (account != null ? !account.equals(baby.account) : baby.account != null) return false;
        if (bloodtype != null ? !bloodtype.equals(baby.bloodtype) : baby.bloodtype != null) return false;
        if (education != null ? !education.equals(baby.education) : baby.education != null) return false;
        if (preDelivery != null ? !preDelivery.equals(baby.preDelivery) : baby.preDelivery != null) return false;
        if (deformity != null ? !deformity.equals(baby.deformity) : baby.deformity != null) return false;
        if (frontalSuture != null ? !frontalSuture.equals(baby.frontalSuture) : baby.frontalSuture != null)
            return false;
        if (onlyChild != null ? !onlyChild.equals(baby.onlyChild) : baby.onlyChild != null) return false;
        if (reason != null ? !reason.equals(baby.reason) : baby.reason != null) return false;
        if (evaluation != null ? !evaluation.equals(baby.evaluation) : baby.evaluation != null) return false;
        if (overview != null ? !overview.equals(baby.overview) : baby.overview != null) return false;
        if (motherBirthage != null ? !motherBirthage.equals(baby.motherBirthage) : baby.motherBirthage != null)
            return false;
        if (marriage != null ? !marriage.equals(baby.marriage) : baby.marriage != null) return false;
        if (sit != null ? !sit.equals(baby.sit) : baby.sit != null) return false;
        if (bust != null ? !bust.equals(baby.bust) : baby.bust != null) return false;
        if (bmi != null ? !bmi.equals(baby.bmi) : baby.bmi != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = babyid;
        result = 31 * result + (int) gender;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + hoid;
        result = 31 * result + userid;
        result = 31 * result + (time != null ? time.hashCode() : 0);
        result = 31 * result + (birthday != null ? birthday.hashCode() : 0);
        result = 31 * result + (nation != null ? nation.hashCode() : 0);
        result = 31 * result + (fatherid != null ? fatherid.hashCode() : 0);
        result = 31 * result + (motherid != null ? motherid.hashCode() : 0);
        result = 31 * result + (motherIllness != null ? motherIllness.hashCode() : 0);
        result = 31 * result + (parity != null ? parity.hashCode() : 0);
        result = 31 * result + (pregnancy != null ? pregnancy.hashCode() : 0);
        result = 31 * result + (delivery != null ? delivery.hashCode() : 0);
        result = 31 * result + (asphyxia != null ? asphyxia.hashCode() : 0);
        result = 31 * result + (birthWeight != null ? birthWeight.hashCode() : 0);
        result = 31 * result + (jaundice != null ? jaundice.hashCode() : 0);
        result = 31 * result + (havePumping != null ? havePumping.hashCode() : 0);
        result = 31 * result + (pumpingTimes != null ? pumpingTimes.hashCode() : 0);
        result = 31 * result + (pumpingBegin != null ? pumpingBegin.hashCode() : 0);
        result = 31 * result + (familyHistory != null ? familyHistory.hashCode() : 0);
        result = 31 * result + (illnessHistory != null ? illnessHistory.hashCode() : 0);
        result = 31 * result + (height != null ? height.hashCode() : 0);
        result = 31 * result + (weight != null ? weight.hashCode() : 0);
        result = 31 * result + (head != null ? head.hashCode() : 0);
        result = 31 * result + (diagnosis != null ? diagnosis.hashCode() : 0);
        result = 31 * result + (remarks != null ? remarks.hashCode() : 0);
        result = 31 * result + (relation != null ? relation.hashCode() : 0);
        result = 31 * result + (province != null ? province.hashCode() : 0);
        result = 31 * result + (city != null ? city.hashCode() : 0);
        result = 31 * result + (address != null ? address.hashCode() : 0);
        result = 31 * result + (postcode != null ? postcode.hashCode() : 0);
        result = 31 * result + (account != null ? account.hashCode() : 0);
        result = 31 * result + (bloodtype != null ? bloodtype.hashCode() : 0);
        result = 31 * result + (education != null ? education.hashCode() : 0);
        result = 31 * result + (preDelivery != null ? preDelivery.hashCode() : 0);
        result = 31 * result + (deformity != null ? deformity.hashCode() : 0);
        result = 31 * result + (frontalSuture != null ? frontalSuture.hashCode() : 0);
        result = 31 * result + (onlyChild != null ? onlyChild.hashCode() : 0);
        result = 31 * result + (reason != null ? reason.hashCode() : 0);
        result = 31 * result + (evaluation != null ? evaluation.hashCode() : 0);
        result = 31 * result + (overview != null ? overview.hashCode() : 0);
        result = 31 * result + (motherBirthage != null ? motherBirthage.hashCode() : 0);
        result = 31 * result + (marriage != null ? marriage.hashCode() : 0);
        result = 31 * result + (sit != null ? sit.hashCode() : 0);
        result = 31 * result + (bust != null ? bust.hashCode() : 0);
        result = 31 * result + (bmi != null ? bmi.hashCode() : 0);
        return result;
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
