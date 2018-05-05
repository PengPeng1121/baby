package com.free4lab.babycheckup.model;

import javax.persistence.*;

@Entity
@Table(name = "baby_schema", schema = "babycheckup")
public class BabySchema {
    private int id;
    private int hoid;
    private Byte motherIllness;//母亲孕期疾病
    private Byte parity;//胎次
    private Byte pregnancy;//孕期
    private Byte delivery;//分娩方式
    private Byte asphyxia;//窒息
    private Byte jaundice;//新生儿黄疸
    private Byte birthWeight;//出生体重
    private Byte havePumping;//抽风史
    private Byte pumpingTimes;
    private Byte pumpingBegin;
    private Byte familyHistory;//家族病史
    private Byte illnessHistory;//重要病史
    private Byte height;//身长
    private Byte weight;//体重
    private Byte head;//头围
    private Byte diagnosis;//初步诊断
    private Byte remarks;//备注
    private Byte relation;//填表人称呼
    private Byte province;
    private Byte city;
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
    private Byte bmi;//身体质量指数

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
    @Column(name = "mother_illness", nullable = true)
    public Byte getMotherIllness() {
        return motherIllness;
    }

    public void setMotherIllness(Byte motherIllness) {
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
    @Column(name = "delivery", nullable = true)
    public Byte getDelivery() {
        return delivery;
    }

    public void setDelivery(Byte delivery) {
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
    @Column(name = "jaundice", nullable = true)
    public Byte getJaundice() {
        return jaundice;
    }

    public void setJaundice(Byte jaundice) {
        this.jaundice = jaundice;
    }

    @Basic
    @Column(name = "birth_weight", nullable = true)
    public Byte getBirthWeight() {
        return birthWeight;
    }

    public void setBirthWeight(Byte birthWeight) {
        this.birthWeight = birthWeight;
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
    @Column(name = "family_history", nullable = true)
    public Byte getFamilyHistory() {
        return familyHistory;
    }

    public void setFamilyHistory(Byte familyHistory) {
        this.familyHistory = familyHistory;
    }

    @Basic
    @Column(name = "illness_history", nullable = true)
    public Byte getIllnessHistory() {
        return illnessHistory;
    }

    public void setIllnessHistory(Byte illnessHistory) {
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
    @Column(name = "weight", nullable = true)
    public Byte getWeight() {
        return weight;
    }

    public void setWeight(Byte weight) {
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
    @Column(name = "diagnosis", nullable = true)
    public Byte getDiagnosis() {
        return diagnosis;
    }

    public void setDiagnosis(Byte diagnosis) {
        this.diagnosis = diagnosis;
    }

    @Basic
    @Column(name = "remarks", nullable = true)
    public Byte getRemarks() {
        return remarks;
    }

    public void setRemarks(Byte remarks) {
        this.remarks = remarks;
    }

    @Basic
    @Column(name = "relation", nullable = true)
    public Byte getRelation() {
        return relation;
    }

    public void setRelation(Byte relation) {
        this.relation = relation;
    }

    @Basic
    @Column(name = "province", nullable = true)
    public Byte getProvince() {
        return province;
    }

    public void setProvince(Byte province) {
        this.province = province;
    }

    @Basic
    @Column(name = "city", nullable = true)
    public Byte getCity() {
        return city;
    }

    public void setCity(Byte city) {
        this.city = city;
    }

    @Basic
    @Column(name = "address", nullable = true)
    public Byte getAddress() {
        return address;
    }

    public void setAddress(Byte address) {
        this.address = address;
    }

    @Basic
    @Column(name = "postcode", nullable = true)
    public Byte getPostcode() {
        return postcode;
    }

    public void setPostcode(Byte postcode) {
        this.postcode = postcode;
    }

    @Basic
    @Column(name = "account", nullable = true)
    public Byte getAccount() {
        return account;
    }

    public void setAccount(Byte account) {
        this.account = account;
    }

    @Basic
    @Column(name = "bloodtype", nullable = true)
    public Byte getBloodtype() {
        return bloodtype;
    }

    public void setBloodtype(Byte bloodtype) {
        this.bloodtype = bloodtype;
    }

    @Basic
    @Column(name = "education", nullable = true)
    public Byte getEducation() {
        return education;
    }

    public void setEducation(Byte education) {
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
    @Column(name = "deformity", nullable = true)
    public Byte getDeformity() {
        return deformity;
    }

    public void setDeformity(Byte deformity) {
        this.deformity = deformity;
    }

    @Basic
    @Column(name = "frontal_suture", nullable = true)
    public Byte getFrontalSuture() {
        return frontalSuture;
    }

    public void setFrontalSuture(Byte frontalSuture) {
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
    @Column(name = "reason", nullable = true)
    public Byte getReason() {
        return reason;
    }

    public void setReason(Byte reason) {
        this.reason = reason;
    }

    @Basic
    @Column(name = "evaluation", nullable = true)
    public Byte getEvaluation() {
        return evaluation;
    }

    public void setEvaluation(Byte evaluation) {
        this.evaluation = evaluation;
    }

    @Basic
    @Column(name = "overview", nullable = true)
    public Byte getOverview() {
        return overview;
    }

    public void setOverview(Byte overview) {
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
    @Column(name = "marriage", nullable = true)
    public Byte getMarriage() {
        return marriage;
    }

    public void setMarriage(Byte marriage) {
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
    @Column(name = "bmi", nullable = true)
    public Byte getBmi() {
        return bmi;
    }

    public void setBmi(Byte bmi) {
        this.bmi = bmi;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        BabySchema that = (BabySchema) o;

        if (id != that.id) return false;
        if (hoid != that.hoid) return false;
        if (motherIllness != null ? !motherIllness.equals(that.motherIllness) : that.motherIllness != null)
            return false;
        if (parity != null ? !parity.equals(that.parity) : that.parity != null) return false;
        if (pregnancy != null ? !pregnancy.equals(that.pregnancy) : that.pregnancy != null) return false;
        if (delivery != null ? !delivery.equals(that.delivery) : that.delivery != null) return false;
        if (asphyxia != null ? !asphyxia.equals(that.asphyxia) : that.asphyxia != null) return false;
        if (jaundice != null ? !jaundice.equals(that.jaundice) : that.jaundice != null) return false;
        if (birthWeight != null ? !birthWeight.equals(that.birthWeight) : that.birthWeight != null) return false;
        if (havePumping != null ? !havePumping.equals(that.havePumping) : that.havePumping != null) return false;
        if (pumpingTimes != null ? !pumpingTimes.equals(that.pumpingTimes) : that.pumpingTimes != null) return false;
        if (pumpingBegin != null ? !pumpingBegin.equals(that.pumpingBegin) : that.pumpingBegin != null) return false;
        if (familyHistory != null ? !familyHistory.equals(that.familyHistory) : that.familyHistory != null)
            return false;
        if (illnessHistory != null ? !illnessHistory.equals(that.illnessHistory) : that.illnessHistory != null)
            return false;
        if (height != null ? !height.equals(that.height) : that.height != null) return false;
        if (weight != null ? !weight.equals(that.weight) : that.weight != null) return false;
        if (head != null ? !head.equals(that.head) : that.head != null) return false;
        if (diagnosis != null ? !diagnosis.equals(that.diagnosis) : that.diagnosis != null) return false;
        if (remarks != null ? !remarks.equals(that.remarks) : that.remarks != null) return false;
        if (relation != null ? !relation.equals(that.relation) : that.relation != null) return false;
        if (province != null ? !province.equals(that.province) : that.province != null) return false;
        if (city != null ? !city.equals(that.city) : that.city != null) return false;
        if (address != null ? !address.equals(that.address) : that.address != null) return false;
        if (postcode != null ? !postcode.equals(that.postcode) : that.postcode != null) return false;
        if (account != null ? !account.equals(that.account) : that.account != null) return false;
        if (bloodtype != null ? !bloodtype.equals(that.bloodtype) : that.bloodtype != null) return false;
        if (education != null ? !education.equals(that.education) : that.education != null) return false;
        if (preDelivery != null ? !preDelivery.equals(that.preDelivery) : that.preDelivery != null) return false;
        if (deformity != null ? !deformity.equals(that.deformity) : that.deformity != null) return false;
        if (frontalSuture != null ? !frontalSuture.equals(that.frontalSuture) : that.frontalSuture != null)
            return false;
        if (onlyChild != null ? !onlyChild.equals(that.onlyChild) : that.onlyChild != null) return false;
        if (reason != null ? !reason.equals(that.reason) : that.reason != null) return false;
        if (evaluation != null ? !evaluation.equals(that.evaluation) : that.evaluation != null) return false;
        if (overview != null ? !overview.equals(that.overview) : that.overview != null) return false;
        if (motherBirthage != null ? !motherBirthage.equals(that.motherBirthage) : that.motherBirthage != null)
            return false;
        if (marriage != null ? !marriage.equals(that.marriage) : that.marriage != null) return false;
        if (sit != null ? !sit.equals(that.sit) : that.sit != null) return false;
        if (bust != null ? !bust.equals(that.bust) : that.bust != null) return false;
        if (bmi != null ? !bmi.equals(that.bmi) : that.bmi != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + hoid;
        result = 31 * result + (motherIllness != null ? motherIllness.hashCode() : 0);
        result = 31 * result + (parity != null ? parity.hashCode() : 0);
        result = 31 * result + (pregnancy != null ? pregnancy.hashCode() : 0);
        result = 31 * result + (delivery != null ? delivery.hashCode() : 0);
        result = 31 * result + (asphyxia != null ? asphyxia.hashCode() : 0);
        result = 31 * result + (jaundice != null ? jaundice.hashCode() : 0);
        result = 31 * result + (birthWeight != null ? birthWeight.hashCode() : 0);
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
}
