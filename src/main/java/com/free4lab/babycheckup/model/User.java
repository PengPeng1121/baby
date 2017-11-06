package com.free4lab.babycheckup.model;

import javax.persistence.*;

@Entity
@Table(name = "user", schema = "babycheckup")
public class User {
    private int userid;
    private String name;
    private int hoid;
    private byte authority;
    private String tel;
    private String email;
    private String position;
    private String extend1;
    private String extend2;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "userid", nullable = false)
    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
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
    @Column(name = "authority", nullable = false)
    public byte getAuthority() {
        return authority;
    }

    public void setAuthority(byte authority) {
        this.authority = authority;
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
    @Column(name = "email", nullable = false, length = 50)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "position", nullable = false, length = 20)
    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    @Basic
    @Column(name = "extend1", nullable = true, length = 11)
    public String getExtend1() {
        return extend1;
    }

    public void setExtend1(String extend1) {
        this.extend1 = extend1;
    }

    @Basic
    @Column(name = "extend2", nullable = true, length = 11)
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

        User user = (User) o;

        if (userid != user.userid) return false;
        if (hoid != user.hoid) return false;
        if (authority != user.authority) return false;
        if (name != null ? !name.equals(user.name) : user.name != null) return false;
        if (tel != null ? !tel.equals(user.tel) : user.tel != null) return false;
        if (email != null ? !email.equals(user.email) : user.email != null) return false;
        if (position != null ? !position.equals(user.position) : user.position != null) return false;
        if (extend1 != null ? !extend1.equals(user.extend1) : user.extend1 != null) return false;
        if (extend2 != null ? !extend2.equals(user.extend2) : user.extend2 != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = userid;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + hoid;
        result = 31 * result + (int) authority;
        result = 31 * result + (tel != null ? tel.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (position != null ? position.hashCode() : 0);
        result = 31 * result + (extend1 != null ? extend1.hashCode() : 0);
        result = 31 * result + (extend2 != null ? extend2.hashCode() : 0);
        return result;
    }
}
