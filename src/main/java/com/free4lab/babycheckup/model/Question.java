package com.free4lab.babycheckup.model;

import javax.persistence.*;

@Entity
@Table(name = "question", schema = "babycheckup", catalog = "")
public class Question {
    private int qid;
    private int ordinal;
    private String description;
    private int month;
    private int type;
    private int testid;
    private String reasons;
    private Double extend1;
    private String extend2;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "qid", nullable = false)
    public int getQid() {
        return qid;
    }

    public void setQid(int qid) {
        this.qid = qid;
    }

    @Basic
    @Column(name = "ordinal", nullable = false)
    public int getOrdinal() {
        return ordinal;
    }

    public void setOrdinal(int ordinal) {
        this.ordinal = ordinal;
    }

    @Basic
    @Column(name = "description", nullable = false, length = 100)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "month", nullable = false)
    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    @Basic
    @Column(name = "type", nullable = false)
    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    @Basic
    @Column(name = "testid", nullable = false)
    public int getTestid() {
        return testid;
    }

    public void setTestid(int testid) {
        this.testid = testid;
    }

    @Basic
    @Column(name = "reasons", nullable = false, length = 200)
    public String getReasons() {
        return reasons;
    }

    public void setReasons(String reasons) {
        this.reasons = reasons;
    }

    @Basic
    @Column(name = "extend1", nullable = true, precision = 0)
    public Double getExtend1() {
        return extend1;
    }

    public void setExtend1(Double extend1) {
        this.extend1 = extend1;
    }

    @Basic
    @Column(name = "extend2", nullable = true, length = 10)
    public String getExtend2() {
        return extend2;
    }

    public void setExtend2(String extend2) {
        this.extend2 = extend2;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Question question = (Question) o;

        if (qid != question.qid) return false;
        if (ordinal != question.ordinal) return false;
        if (month != question.month) return false;
        if (type != question.type) return false;
        if (testid != question.testid) return false;
        if (description != null ? !description.equals(question.description) : question.description != null)
            return false;
        if (reasons != null ? !reasons.equals(question.reasons) : question.reasons != null) return false;
        if (extend1 != null ? !extend1.equals(question.extend1) : question.extend1 != null) return false;
        if (extend2 != null ? !extend2.equals(question.extend2) : question.extend2 != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = qid;
        result = 31 * result + ordinal;
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + month;
        result = 31 * result + type;
        result = 31 * result + testid;
        result = 31 * result + (reasons != null ? reasons.hashCode() : 0);
        result = 31 * result + (extend1 != null ? extend1.hashCode() : 0);
        result = 31 * result + (extend2 != null ? extend2.hashCode() : 0);
        return result;
    }
}
