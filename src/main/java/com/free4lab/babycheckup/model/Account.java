package com.free4lab.babycheckup.model;

import javax.persistence.*;

@Entity
@Table(name="account", schema = "babycheckup", catalog = "")
public class Account {
    private int id;
    private int userid;
    private String tel;
    private String psw;
    private String extend;

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
    @Column(name = "userid", nullable = false)
    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    @Basic
    @Column(name = "tel", nullable = false, length = 11)
    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    @Basic
    @Column(name = "psw", nullable = false, length = 32)
    public String getPsw() {
        return psw;
    }

    public void setPsw(String psw) {
        this.psw = psw;
    }

    @Basic
    @Column(name = "extend", nullable = true, length = 11)
    public String getExtend() {
        return extend;
    }

    public void setExtend(String extend) {
        this.extend = extend;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Account account = (Account) o;

        if (id != account.id) return false;
        if (userid != account.userid) return false;
        if (tel != null ? !tel.equals(account.tel) : account.tel != null) return false;
        if (psw != null ? !psw.equals(account.psw) : account.psw != null) return false;
        if (extend != null ? !extend.equals(account.extend) : account.extend != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + userid;
        result = 31 * result + (tel != null ? tel.hashCode() : 0);
        result = 31 * result + (psw != null ? psw.hashCode() : 0);
        result = 31 * result + (extend != null ? extend.hashCode() : 0);
        return result;
    }
}
