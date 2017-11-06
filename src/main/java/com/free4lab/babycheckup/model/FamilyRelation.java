package com.free4lab.babycheckup.model;

import javax.persistence.*;

@Entity
@Table(name = "family_relation", schema = "babycheckup", catalog = "")
public class FamilyRelation {
    private int id;
    private int babyid;
    private int parentid;
    private String relation;
    private Byte extend;

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
    @Column(name = "babyid", nullable = false)
    public int getBabyid() {
        return babyid;
    }

    public void setBabyid(int babyid) {
        this.babyid = babyid;
    }

    @Basic
    @Column(name = "parentid", nullable = false)
    public int getParentid() {
        return parentid;
    }

    public void setParentid(int parentid) {
        this.parentid = parentid;
    }

    @Basic
    @Column(name = "relation", nullable = false, length = 20)
    public String getRelation() {
        return relation;
    }

    public void setRelation(String relation) {
        this.relation = relation;
    }

    @Basic
    @Column(name = "extend", nullable = true)
    public Byte getExtend() {
        return extend;
    }

    public void setExtend(Byte extend) {
        this.extend = extend;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        FamilyRelation that = (FamilyRelation) o;

        if (id != that.id) return false;
        if (babyid != that.babyid) return false;
        if (parentid != that.parentid) return false;
        if (relation != null ? !relation.equals(that.relation) : that.relation != null) return false;
        if (extend != null ? !extend.equals(that.extend) : that.extend != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + babyid;
        result = 31 * result + parentid;
        result = 31 * result + (relation != null ? relation.hashCode() : 0);
        result = 31 * result + (extend != null ? extend.hashCode() : 0);
        return result;
    }
}
