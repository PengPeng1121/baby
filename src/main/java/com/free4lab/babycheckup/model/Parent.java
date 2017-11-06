package com.free4lab.babycheckup.model;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "parent", schema = "babycheckup", catalog = "")
public class Parent {
    private int parentid;
    private String name;
    private String tel;
    private String career;
    private String education;
    private Date birth;
    private String email;
    private Byte worktime;
    private Byte extend;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "parentid", nullable = false)
    public int getParentid() {
        return parentid;
    }

    public void setParentid(int parentid) {
        this.parentid = parentid;
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
    @Column(name = "tel", nullable = false, length = 15)
    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    @Basic
    @Column(name = "career", nullable = true, length = 20)
    public String getCareer() {
        return career;
    }

    public void setCareer(String career) {
        this.career = career;
    }

    @Basic
    @Column(name = "education", nullable = true, length = 10)
    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    @Basic
    @Column(name = "birth", nullable = true)
    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    @Basic
    @Column(name = "email", nullable = true, length = 100)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "worktime", nullable = true)
    public Byte getWorktime() {
        return worktime;
    }

    public void setWorktime(Byte worktime) {
        this.worktime = worktime;
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

        Parent parent = (Parent) o;

        if (parentid != parent.parentid) return false;
        if (name != null ? !name.equals(parent.name) : parent.name != null) return false;
        if (tel != null ? !tel.equals(parent.tel) : parent.tel != null) return false;
        if (career != null ? !career.equals(parent.career) : parent.career != null) return false;
        if (education != null ? !education.equals(parent.education) : parent.education != null) return false;
        if (birth != null ? !birth.equals(parent.birth) : parent.birth != null) return false;
        if (email != null ? !email.equals(parent.email) : parent.email != null) return false;
        if (worktime != null ? !worktime.equals(parent.worktime) : parent.worktime != null) return false;
        if (extend != null ? !extend.equals(parent.extend) : parent.extend != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = parentid;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (tel != null ? tel.hashCode() : 0);
        result = 31 * result + (career != null ? career.hashCode() : 0);
        result = 31 * result + (education != null ? education.hashCode() : 0);
        result = 31 * result + (birth != null ? birth.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (worktime != null ? worktime.hashCode() : 0);
        result = 31 * result + (extend != null ? extend.hashCode() : 0);
        return result;
    }
}
