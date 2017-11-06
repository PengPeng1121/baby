package com.free4lab.babycheckup.model;

import javax.persistence.*;

@Entity
@Table(name = "hospital", schema = "babycheckup", catalog = "")
public class Hospital {
    private int hoid;
    private String name;
    private String address;
    private String tel;
    private String logoLanding;
    private String bannerLanding;
    private String logo;
    private String extend1;
    private String extend2;
    private String extend3;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "hoid", nullable = false)
    public int getHoid() {
        return hoid;
    }

    public void setHoid(int hoid) {
        this.hoid = hoid;
    }

    @Basic
    @Column(name = "name", nullable = false, length = 40)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "address", nullable = false, length = 80)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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
    @Column(name = "logo_landing", nullable = true, length = 45)
    public String getLogoLanding() {
        return logoLanding;
    }

    public void setLogoLanding(String logoLanding) {
        this.logoLanding = logoLanding;
    }

    @Basic
    @Column(name = "banner_landing", nullable = true, length = 45)
    public String getBannerLanding() {
        return bannerLanding;
    }

    public void setBannerLanding(String bannerLanding) {
        this.bannerLanding = bannerLanding;
    }

    @Basic
    @Column(name = "logo", nullable = true, length = 45)
    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    @Basic
    @Column(name = "extend1", nullable = true, length = 80)
    public String getExtend1() {
        return extend1;
    }

    public void setExtend1(String extend1) {
        this.extend1 = extend1;
    }

    @Basic
    @Column(name = "extend2", nullable = true, length = 80)
    public String getExtend2() {
        return extend2;
    }

    public void setExtend2(String extend2) {
        this.extend2 = extend2;
    }

    @Basic
    @Column(name = "extend3", nullable = true, length = 50)
    public String getExtend3() {
        return extend3;
    }

    public void setExtend3(String extend3) {
        this.extend3 = extend3;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Hospital hospital = (Hospital) o;

        if (hoid != hospital.hoid) return false;
        if (name != null ? !name.equals(hospital.name) : hospital.name != null) return false;
        if (address != null ? !address.equals(hospital.address) : hospital.address != null) return false;
        if (tel != null ? !tel.equals(hospital.tel) : hospital.tel != null) return false;
        if (extend1 != null ? !extend1.equals(hospital.extend1) : hospital.extend1 != null) return false;
        if (extend2 != null ? !extend2.equals(hospital.extend2) : hospital.extend2 != null) return false;
        if (extend3 != null ? !extend3.equals(hospital.extend3) : hospital.extend3 != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = hoid;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (address != null ? address.hashCode() : 0);
        result = 31 * result + (tel != null ? tel.hashCode() : 0);
        result = 31 * result + (extend1 != null ? extend1.hashCode() : 0);
        result = 31 * result + (extend2 != null ? extend2.hashCode() : 0);
        result = 31 * result + (extend3 != null ? extend3.hashCode() : 0);
        return result;
    }
}
