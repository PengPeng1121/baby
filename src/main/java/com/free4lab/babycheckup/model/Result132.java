package com.free4lab.babycheckup.model;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by Administrator on 2017/7/12.
 */

@Entity
@Table(name = "result132", schema = "babycheckup")
public class Result132 {
    private int id;
    private int testId;
    private int babyId;
    private Timestamp time;
    private int hosId;
    private int userId;
    private String state;
    private String answerRelation;//答题者与儿童关系
    private int a1;
    private int a2;
    private int a3;
    private int a4;
    private int a5;
    private int a6;
    private String rough;
    private String norm;
    private String level;

    private String reason1;
    private String reason2;
    private String reason3;
    private String reason4;
    private String reason5;
    private String reason6;
    private String reason7;
    private String reason8;
    private String reason9;
    private String reason10;

    private String reason11;
    private String reason12;
    private String reason13;
    private String reason14;
    private String reason15;
    private String reason16;
    private String reason17;
    private String reason18;
    private String reason19;
    private String reason20;

    private String reason21;
    private String reason22;
    private String reason23;
    private String reason24;
    private String reason25;
    private String reason26;
    private String reason27;
    private String reason28;
    private String reason29;
    private String reason30;

    private String reason31;
    private String reason32;
    private String reason33;
    private String reason34;
    private String reason35;
    private String reason36;
    private String reason37;
    private String reason38;
    private String reason39;
    private String reason40;

    private String reason41;
    private String reason42;
    private String reason43;
    private String reason44;
    private String reason45;
    private String reason46;
    private String reason47;
    private String reason48;
    private String reason49;
    private String reason50;

    private String reason51;
    private String reason52;
    private String reason53;
    private String reason54;
    private String reason55;
    private String reason56;
    private String reason57;
    private String reason58;
    private String reason59;
    private String reason60;

    private String reason61;
    private String reason62;
    private String reason63;
    private String reason64;
    private String reason65;
    private String reason66;
    private String reason67;
    private String reason68;
    private String reason69;
    private String reason70;

    private String reason71;
    private String reason72;
    private String reason73;
    private String reason74;
    private String reason75;
    private String reason76;
    private String reason77;
    private String reason78;
    private String reason79;
    private String reason80;

    private String reason81;
    private String reason82;
    private String reason83;
    private String reason84;
    private String reason85;
    private String reason86;
    private String reason87;
    private String reason88;
    private String reason89;
    private String reason90;

    private String reason91;
    private String reason92;
    private String reason93;
    private String reason94;
    private String reason95;
    private String reason96;
    private String reason97;
    private String reason98;
    private String reason99;
    private String reason100;

    private String reason101;
    private String reason102;
    private String reason103;
    private String reason104;
    private String reason105;
    private String reason106;
    private String reason107;
    private String reason108;
    private String reason109;
    private String reason110;

    private String reason111;
    private String reason112;
    private String reason113;
    private String reason114;
    private String reason115;
    private String reason116;
    private String reason117;
    private String reason118;
    private String reason119;
    private String reason120;

    private String reason121;
    private String reason122;
    private String reason123;
    private String reason124;
    private String reason125;
    private String reason126;
    private String reason127;
    private String reason128;
    private String reason129;
    private String reason130;

    private String reason131;
    private String reason132;

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
    @Column(name = "test_id", nullable = false)
    public int getTestId() {
        return testId;
    }

    public void setTestId(int testId) {
        this.testId = testId;
    }

    @Basic
    @Column(name = "baby_id", nullable = false)
    public int getBabyId() {
        return babyId;
    }

    public void setBabyId(int babyId) {
        this.babyId = babyId;
    }

    @Basic
    @Column(name = "time", nullable = false)
    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    @Basic
    @Column(name = "hos_id", nullable = false)
    public int getHosId() {
        return hosId;
    }

    public void setHosId(int hosId) {
        this.hosId = hosId;
    }

    @Basic
    @Column(name = "user_id", nullable = false)
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "state", nullable = true, length = 20)
    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Basic
    @Column(name = "a1", nullable = false)
    public int getA1() {
        return a1;
    }

    public void setA1(int a1) {
        this.a1 = a1;
    }

    @Basic
    @Column(name = "a2", nullable = false)
    public int getA2() {
        return a2;
    }

    public void setA2(int a2) {
        this.a2 = a2;
    }

    @Basic
    @Column(name = "a3", nullable = false)
    public int getA3() {
        return a3;
    }

    public void setA3(int a3) {
        this.a3 = a3;
    }

    @Basic
    @Column(name = "a4", nullable = false)
    public int getA4() {
        return a4;
    }

    public void setA4(int a4) {
        this.a4 = a4;
    }

    @Basic
    @Column(name = "a5", nullable = false)
    public int getA5() {
        return a5;
    }

    public void setA5(int a5) {
        this.a5 = a5;
    }

    @Basic
    @Column(name = "a6", nullable = false)
    public int getA6() {
        return a6;
    }

    public void setA6(int a6) {
        this.a6 = a6;
    }

    @Basic
    @Column(name = "reason_1", nullable = true, length = 40)
    public String getReason1() {
        return reason1;
    }

    public void setReason1(String reason1) {
        this.reason1 = reason1;
    }


    @Basic
    @Column(name = "reason_2", nullable = true, length = 40)
    public String getReason2() {
        return reason2;
    }

    public void setReason2(String reason2) {
        this.reason2 = reason2;
    }

    @Basic
    @Column(name = "reason_3", nullable = true, length = 40)
    public String getReason3() {
        return reason3;
    }

    public void setReason3(String reason3) {
        this.reason3 = reason3;
    }

    @Basic
    @Column(name = "reason_4", nullable = true, length = 40)
    public String getReason4() {
        return reason4;
    }

    public void setReason4(String reason4) {
        this.reason4 = reason4;
    }

    @Basic
    @Column(name = "reason_5", nullable = true, length = 40)
    public String getReason5() {
        return reason5;
    }

    public void setReason5(String reason5) {
        this.reason5 = reason5;
    }

    @Basic
    @Column(name = "reason_6", nullable = true, length = 40)
    public String getReason6() {
        return reason6;
    }

    public void setReason6(String reason6) {
        this.reason6 = reason6;
    }

    @Basic
    @Column(name = "reason_7", nullable = true, length = 40)
    public String getReason7() {
        return reason7;
    }

    public void setReason7(String reason7) {
        this.reason7 = reason7;
    }

    @Basic
    @Column(name = "reason_8", nullable = true, length = 40)
    public String getReason8() {
        return reason8;
    }

    public void setReason8(String reason8) {
        this.reason8 = reason8;
    }

    @Basic
    @Column(name = "reason_9", nullable = true, length = 40)
    public String getReason9() {
        return reason9;
    }

    public void setReason9(String reason9) {
        this.reason9 = reason9;
    }

    @Basic
    @Column(name = "reason_10", nullable = true, length = 40)
    public String getReason10() {
        return reason10;
    }

    public void setReason10(String reason10) {
        this.reason10 = reason10;
    }

    @Basic
    @Column(name = "reason_11", nullable = true, length = 40)
    public String getReason11() {
        return reason11;
    }

    public void setReason11(String reason11) {
        this.reason11 = reason11;
    }

    @Basic
    @Column(name = "reason_12", nullable = true, length = 40)
    public String getReason12() {
        return reason12;
    }

    public void setReason12(String reason12) {
        this.reason12 = reason12;
    }

    @Basic
    @Column(name = "reason_13", nullable = true, length = 40)
    public String getReason13() {
        return reason13;
    }

    public void setReason13(String reason13) {
        this.reason13 = reason13;
    }

    @Basic
    @Column(name = "reason_14", nullable = true, length = 40)
    public String getReason14() {
        return reason14;
    }

    public void setReason14(String reason14) {
        this.reason14 = reason14;
    }

    @Basic
    @Column(name = "reason_15", nullable = true, length = 40)
    public String getReason15() {
        return reason15;
    }

    public void setReason15(String reason15) {
        this.reason15 = reason15;
    }

    @Basic
    @Column(name = "reason_16", nullable = true, length = 40)
    public String getReason16() {
        return reason16;
    }

    public void setReason16(String reason16) {
        this.reason16 = reason16;
    }

    @Basic
    @Column(name = "reason_17", nullable = true, length = 40)
    public String getReason17() {
        return reason17;
    }

    public void setReason17(String reason17) {
        this.reason17 = reason17;
    }

    @Basic
    @Column(name = "reason_18", nullable = true, length = 40)
    public String getReason18() {
        return reason18;
    }

    public void setReason18(String reason18) {
        this.reason18 = reason18;
    }

    @Basic
    @Column(name = "reason_19", nullable = true, length = 40)
    public String getReason19() {
        return reason19;
    }

    public void setReason19(String reason19) {
        this.reason19 = reason19;
    }

    @Basic
    @Column(name = "reason_20", nullable = true, length = 40)
    public String getReason20() {
        return reason20;
    }

    public void setReason20(String reason20) {
        this.reason20 = reason20;
    }

    @Basic
    @Column(name = "reason_21", nullable = true, length = 40)
    public String getReason21() {
        return reason21;
    }

    public void setReason21(String reason21) {
        this.reason21 = reason21;
    }

    @Basic
    @Column(name = "reason_22", nullable = true, length = 40)
    public String getReason22() {
        return reason22;
    }

    public void setReason22(String reason22) {
        this.reason22 = reason22;
    }

    @Basic
    @Column(name = "reason_23", nullable = true, length = 40)
    public String getReason23() {
        return reason23;
    }

    public void setReason23(String reason23) {
        this.reason23 = reason23;
    }

    @Basic
    @Column(name = "reason_24", nullable = true, length = 40)
    public String getReason24() {
        return reason24;
    }

    public void setReason24(String reason24) {
        this.reason24 = reason24;
    }

    @Basic
    @Column(name = "reason_25", nullable = true, length = 40)
    public String getReason25() {
        return reason25;
    }

    public void setReason25(String reason25) {
        this.reason25 = reason25;
    }

    @Basic
    @Column(name = "reason_26", nullable = true, length = 40)
    public String getReason26() {
        return reason26;
    }

    public void setReason26(String reason26) {
        this.reason26 = reason26;
    }

    @Basic
    @Column(name = "reason_27", nullable = true, length = 40)
    public String getReason27() {
        return reason27;
    }

    public void setReason27(String reason27) {
        this.reason27 = reason27;
    }

    @Basic
    @Column(name = "reason_28", nullable = true, length = 40)
    public String getReason28() {
        return reason28;
    }

    public void setReason28(String reason28) {
        this.reason28 = reason28;
    }

    @Basic
    @Column(name = "reason_29", nullable = true, length = 40)
    public String getReason29() {
        return reason29;
    }

    public void setReason29(String reason29) {
        this.reason29 = reason29;
    }

    @Basic
    @Column(name = "reason_30", nullable = true, length = 40)
    public String getReason30() {
        return reason30;
    }

    public void setReason30(String reason30) {
        this.reason30 = reason30;
    }

    @Basic
    @Column(name = "reason_31", nullable = true, length = 40)
    public String getReason31() {
        return reason31;
    }

    public void setReason31(String reason31) {
        this.reason31 = reason31;
    }

    @Basic
    @Column(name = "reason_32", nullable = true, length = 40)
    public String getReason32() {
        return reason32;
    }

    public void setReason32(String reason32) {
        this.reason32 = reason32;
    }

    @Basic
    @Column(name = "reason_33", nullable = true, length = 40)
    public String getReason33() {
        return reason33;
    }

    public void setReason33(String reason33) {
        this.reason33 = reason33;
    }

    @Basic
    @Column(name = "reason_34", nullable = true, length = 40)
    public String getReason34() {
        return reason34;
    }

    public void setReason34(String reason34) {
        this.reason34 = reason34;
    }

    @Basic
    @Column(name = "reason_35", nullable = true, length = 40)
    public String getReason35() {
        return reason35;
    }

    public void setReason35(String reason35) {
        this.reason35 = reason35;
    }

    @Basic
    @Column(name = "reason_36", nullable = true, length = 40)
    public String getReason36() {
        return reason36;
    }

    public void setReason36(String reason36) {
        this.reason36 = reason36;
    }

    @Basic
    @Column(name = "reason_37", nullable = true, length = 40)
    public String getReason37() {
        return reason37;
    }

    public void setReason37(String reason37) {
        this.reason37 = reason37;
    }

    @Basic
    @Column(name = "reason_38", nullable = true, length = 40)
    public String getReason38() {
        return reason38;
    }

    public void setReason38(String reason38) {
        this.reason38 = reason38;
    }

    @Basic
    @Column(name = "reason_39", nullable = true, length = 40)
    public String getReason39() {
        return reason39;
    }

    public void setReason39(String reason39) {
        this.reason39 = reason39;
    }

    @Basic
    @Column(name = "reason_40", nullable = true, length = 40)
    public String getReason40() {
        return reason40;
    }

    public void setReason40(String reason40) {
        this.reason40 = reason40;
    }

    @Basic
    @Column(name = "reason_41", nullable = true, length = 40)
    public String getReason41() {
        return reason41;
    }

    public void setReason41(String reason41) {
        this.reason41 = reason41;
    }

    @Basic
    @Column(name = "reason_42", nullable = true, length = 40)
    public String getReason42() {
        return reason42;
    }

    public void setReason42(String reason42) {
        this.reason42 = reason42;
    }

    @Basic
    @Column(name = "reason_43", nullable = true, length = 40)
    public String getReason43() {
        return reason43;
    }

    public void setReason43(String reason43) {
        this.reason43 = reason43;
    }

    @Basic
    @Column(name = "reason_44", nullable = true, length = 40)
    public String getReason44() {
        return reason44;
    }

    public void setReason44(String reason44) {
        this.reason44 = reason44;
    }

    @Basic
    @Column(name = "reason_45", nullable = true, length = 40)
    public String getReason45() {
        return reason45;
    }

    public void setReason45(String reason45) {
        this.reason45 = reason45;
    }

    @Basic
    @Column(name = "reason_46", nullable = true, length = 40)
    public String getReason46() {
        return reason46;
    }

    public void setReason46(String reason46) {
        this.reason46 = reason46;
    }

    @Basic
    @Column(name = "reason_47", nullable = true, length = 40)
    public String getReason47() {
        return reason47;
    }

    public void setReason47(String reason47) {
        this.reason47 = reason47;
    }

    @Basic
    @Column(name = "reason_48", nullable = true, length = 40)
    public String getReason48() {
        return reason48;
    }

    public void setReason48(String reason48) {
        this.reason48 = reason48;
    }

    @Basic
    @Column(name = "reason_49", nullable = true, length = 40)
    public String getReason49() {
        return reason49;
    }

    public void setReason49(String reason49) {
        this.reason49 = reason49;
    }


    @Basic
    @Column(name = "reason_50", nullable = true, length = 40)
    public String getReason50() {
        return reason50;
    }

    public void setReason50(String reason50) {
        this.reason50 = reason50;
    }


    @Basic
    @Column(name = "reason_51", nullable = true, length = 40)
    public String getReason51() {
        return reason51;
    }

    public void setReason51(String reason51) {
        this.reason51 = reason51;
    }

    @Basic
    @Column(name = "reason_52", nullable = true, length = 40)
    public String getReason52() {
        return reason52;
    }

    public void setReason52(String reason52) {
        this.reason52 = reason52;
    }

    @Basic
    @Column(name = "reason_53", nullable = true, length = 40)
    public String getReason53() {
        return reason53;
    }

    public void setReason53(String reason53) {
        this.reason53 = reason53;
    }

    @Basic
    @Column(name = "reason_54", nullable = true, length = 40)
    public String getReason54() {
        return reason54;
    }

    public void setReason54(String reason54) {
        this.reason54 = reason54;
    }

    @Basic
    @Column(name = "reason_55", nullable = true, length = 40)
    public String getReason55() {
        return reason55;
    }

    public void setReason55(String reason55) {
        this.reason55 = reason55;
    }

    @Basic
    @Column(name = "reason_56", nullable = true, length = 40)
    public String getReason56() {
        return reason56;
    }

    public void setReason56(String reason56) {
        this.reason56 = reason56;
    }

    @Basic
    @Column(name = "reason_57", nullable = true, length = 40)
    public String getReason57() {
        return reason57;
    }

    public void setReason57(String reason57) {
        this.reason57 = reason57;
    }

    @Basic
    @Column(name = "reason_58", nullable = true, length = 40)
    public String getReason58() {
        return reason58;
    }

    public void setReason58(String reason58) {
        this.reason58 = reason58;
    }

    @Basic
    @Column(name = "reason_59", nullable = true, length = 40)
    public String getReason59() {
        return reason59;
    }

    public void setReason59(String reason59) {
        this.reason59 = reason59;
    }

    @Basic
    @Column(name = "reason_60", nullable = true, length = 40)
    public String getReason60() {
        return reason60;
    }

    public void setReason60(String reason60) {
        this.reason60 = reason60;
    }

    @Basic
    @Column(name = "reason_61", nullable = true, length = 40)
    public String getReason61() {
        return reason61;
    }

    public void setReason61(String reason61) {
        this.reason61 = reason61;
    }

    @Basic
    @Column(name = "reason_62", nullable = true, length = 40)
    public String getReason62() {
        return reason62;
    }

    public void setReason62(String reason62) {
        this.reason62 = reason62;
    }

    @Basic
    @Column(name = "reason_63", nullable = true, length = 40)
    public String getReason63() {
        return reason63;
    }

    public void setReason63(String reason63) {
        this.reason63 = reason63;
    }

    @Basic
    @Column(name = "reason_64", nullable = true, length = 40)
    public String getReason64() {
        return reason64;
    }

    public void setReason64(String reason64) {
        this.reason64 = reason64;
    }

    @Basic
    @Column(name = "reason_65", nullable = true, length = 40)
    public String getReason65() {
        return reason65;
    }

    public void setReason65(String reason65) {
        this.reason65 = reason65;
    }

    @Basic
    @Column(name = "reason_66", nullable = true, length = 40)
    public String getReason66() {
        return reason66;
    }

    public void setReason66(String reason66) {
        this.reason66 = reason66;
    }

    @Basic
    @Column(name = "reason_67", nullable = true, length = 40)
    public String getReason67() {
        return reason67;
    }

    public void setReason67(String reason67) {
        this.reason67 = reason67;
    }

    @Basic
    @Column(name = "reason_68", nullable = true, length = 40)
    public String getReason68() {
        return reason68;
    }

    public void setReason68(String reason68) {
        this.reason68 = reason68;
    }

    @Basic
    @Column(name = "reason_69", nullable = true, length = 40)
    public String getReason69() {
        return reason69;
    }

    public void setReason69(String reason69) {
        this.reason69 = reason69;
    }

    @Basic
    @Column(name = "reason_70", nullable = true, length = 40)
    public String getReason70() {
        return reason70;
    }

    public void setReason70(String reason70) {
        this.reason70 = reason70;
    }

    @Basic
    @Column(name = "reason_71", nullable = true, length = 40)
    public String getReason71() {
        return reason71;
    }

    public void setReason71(String reason71) {
        this.reason71 = reason71;
    }

    @Basic
    @Column(name = "reason_72", nullable = true, length = 40)
    public String getReason72() {
        return reason72;
    }

    public void setReason72(String reason72) {
        this.reason72 = reason72;
    }

    @Basic
    @Column(name = "reason_73", nullable = true, length = 40)
    public String getReason73() {
        return reason73;
    }

    public void setReason73(String reason73) {
        this.reason73 = reason73;
    }

    @Basic
    @Column(name = "reason_74", nullable = true, length = 40)
    public String getReason74() {
        return reason74;
    }

    public void setReason74(String reason74) {
        this.reason74 = reason74;
    }

    @Basic
    @Column(name = "reason_75", nullable = true, length = 40)
    public String getReason75() {
        return reason75;
    }

    public void setReason75(String reason75) {
        this.reason75 = reason75;
    }

    @Basic
    @Column(name = "reason_76", nullable = true, length = 40)
    public String getReason76() {
        return reason76;
    }

    public void setReason76(String reason76) {
        this.reason76 = reason76;
    }

    @Basic
    @Column(name = "reason_77", nullable = true, length = 40)
    public String getReason77() {
        return reason77;
    }

    public void setReason77(String reason77) {
        this.reason77 = reason77;
    }

    @Basic
    @Column(name = "reason_78", nullable = true, length = 40)
    public String getReason78() {
        return reason78;
    }

    public void setReason78(String reason78) {
        this.reason78 = reason78;
    }

    @Basic
    @Column(name = "reason_79", nullable = true, length = 40)
    public String getReason79() {
        return reason79;
    }

    public void setReason79(String reason79) {
        this.reason79 = reason79;
    }

    @Basic
    @Column(name = "reason_80", nullable = true, length = 40)
    public String getReason80() {
        return reason80;
    }

    public void setReason80(String reason80) {
        this.reason80 = reason80;
    }

    @Basic
    @Column(name = "reason_81", nullable = true, length = 40)
    public String getReason81() {
        return reason81;
    }

    public void setReason81(String reason81) {
        this.reason81 = reason81;
    }

    @Basic
    @Column(name = "reason_82", nullable = true, length = 40)
    public String getReason82() {
        return reason82;
    }

    public void setReason82(String reason82) {
        this.reason82 = reason82;
    }

    @Basic
    @Column(name = "reason_83", nullable = true, length = 40)
    public String getReason83() {
        return reason83;
    }

    public void setReason83(String reason83) {
        this.reason83 = reason83;
    }

    @Basic
    @Column(name = "reason_84", nullable = true, length = 40)
    public String getReason84() {
        return reason84;
    }

    public void setReason84(String reason84) {
        this.reason84 = reason84;
    }

    @Basic
    @Column(name = "reason_85", nullable = true, length = 40)
    public String getReason85() {
        return reason85;
    }

    public void setReason85(String reason85) {
        this.reason85 = reason85;
    }

    @Basic
    @Column(name = "reason_86", nullable = true, length = 40)
    public String getReason86() {
        return reason86;
    }

    public void setReason86(String reason86) {
        this.reason86 = reason86;
    }

    @Basic
    @Column(name = "reason_87", nullable = true, length = 40)
    public String getReason87() {
        return reason87;
    }

    public void setReason87(String reason87) {
        this.reason87 = reason87;
    }

    @Basic
    @Column(name = "reason_88", nullable = true, length = 40)
    public String getReason88() {
        return reason88;
    }

    public void setReason88(String reason88) {
        this.reason88 = reason88;
    }

    @Basic
    @Column(name = "reason_89", nullable = true, length = 40)
    public String getReason89() {
        return reason89;
    }

    public void setReason89(String reason89) {
        this.reason89 = reason89;
    }

    @Basic
    @Column(name = "reason_90", nullable = true, length = 40)
    public String getReason90() {
        return reason90;
    }

    public void setReason90(String reason90) {
        this.reason90 = reason90;
    }

    @Basic
    @Column(name = "reason_91", nullable = true, length = 40)
    public String getReason91() {
        return reason91;
    }

    public void setReason91(String reason91) {
        this.reason91 = reason91;
    }

    @Basic
    @Column(name = "reason_92", nullable = true, length = 40)
    public String getReason92() {
        return reason92;
    }

    public void setReason92(String reason92) {
        this.reason92 = reason92;
    }

    @Basic
    @Column(name = "reason_93", nullable = true, length = 40)
    public String getReason93() {
        return reason93;
    }

    public void setReason93(String reason93) {
        this.reason93 = reason93;
    }

    @Basic
    @Column(name = "reason_94", nullable = true, length = 40)
    public String getReason94() {
        return reason94;
    }

    public void setReason94(String reason94) {
        this.reason94 = reason94;
    }

    @Basic
    @Column(name = "reason_95", nullable = true, length = 40)
    public String getReason95() {
        return reason95;
    }
    public void setReason95(String reason95) {
        this.reason95 = reason95;
    }

    @Basic
    @Column(name = "reason_96", nullable = true, length = 40)
    public String getReason96() {
        return reason96;
    }

    public void setReason96(String reason96) {
        this.reason96 = reason96;
    }

    @Basic
    @Column(name = "reason_97", nullable = true, length = 40)
    public String getReason97() {
        return reason97;
    }

    public void setReason97(String reason97) {
        this.reason97 = reason97;
    }

    @Basic
    @Column(name = "reason_98", nullable = true, length = 40)
    public String getReason98() {
        return reason98;
    }

    public void setReason98(String reason98) {
        this.reason98 = reason98;
    }

    @Basic
    @Column(name = "reason_99", nullable = true, length = 40)
    public String getReason99() {
        return reason99;
    }

    public void setReason99(String reason99) {
        this.reason99 = reason99;
    }

    @Basic
    @Column(name = "reason_100", nullable = true, length = 40)
    public String getReason100() {
        return reason100;
    }

    public void setReason100(String reason100) {
        this.reason100 = reason100;
    }

    @Basic
    @Column(name = "reason_101", nullable = true, length = 40)
    public String getReason101() {
        return reason101;
    }

    public void setReason101(String reason101) {
        this.reason101 = reason101;
    }

    @Basic
    @Column(name = "reason_102", nullable = true, length = 40)
    public String getReason102() {
        return reason102;
    }

    public void setReason102(String reason102) {
        this.reason102 = reason102;
    }

    @Basic
    @Column(name = "reason_103", nullable = true, length = 40)
    public String getReason103() {
        return reason103;
    }

    public void setReason103(String reason103) {
        this.reason103 = reason103;
    }

    @Basic
    @Column(name = "reason_104", nullable = true, length = 40)
    public String getReason104() {
        return reason104;
    }

    public void setReason104(String reason104) {
        this.reason104 = reason104;
    }

    @Basic
    @Column(name = "reason_105", nullable = true, length = 40)
    public String getReason105() {
        return reason105;
    }

    public void setReason105(String reason105) {
        this.reason105 = reason105;
    }

    @Basic
    @Column(name = "reason_106", nullable = true, length = 40)
    public String getReason106() {
        return reason106;
    }

    public void setReason106(String reason106) {
        this.reason106 = reason106;
    }

    @Basic
    @Column(name = "reason_107", nullable = true, length = 40)
    public String getReason107() {
        return reason107;
    }

    public void setReason107(String reason107) {
        this.reason107 = reason107;
    }

    @Basic
    @Column(name = "reason_108", nullable = true, length = 40)
    public String getReason108() {
        return reason108;
    }

    public void setReason108(String reason108) {
        this.reason108 = reason108;
    }

    @Basic
    @Column(name = "reason_109", nullable = true, length = 40)
    public String getReason109() {
        return reason109;
    }

    public void setReason109(String reason109) {
        this.reason109 = reason109;
    }

    @Basic
    @Column(name = "reason_110", nullable = true, length = 40)
    public String getReason110() {
        return reason110;
    }

    public void setReason110(String reason110) {
        this.reason110 = reason110;
    }

    @Basic
    @Column(name = "reason_111", nullable = true, length = 40)
    public String getReason111() {
        return reason111;
    }

    public void setReason111(String reason111) {
        this.reason111 = reason111;
    }

    @Basic
    @Column(name = "reason_112", nullable = true, length = 40)
    public String getReason112() {
        return reason112;
    }

    public void setReason112(String reason112) {
        this.reason112 = reason112;
    }

    @Basic
    @Column(name = "reason_113", nullable = true, length = 40)
    public String getReason113() {
        return reason113;
    }

    public void setReason113(String reason113) {
        this.reason113 = reason113;
    }

    @Basic
    @Column(name = "reason_114", nullable = true, length = 40)
    public String getReason114() {
        return reason114;
    }

    public void setReason114(String reason114) {
        this.reason114 = reason114;
    }

    @Basic
    @Column(name = "reason_115", nullable = true, length = 40)
    public String getReason115() {
        return reason115;
    }

    public void setReason115(String reason115) {
        this.reason115 = reason115;
    }

    @Basic
    @Column(name = "reason_116", nullable = true, length = 40)
    public String getReason116() {
        return reason116;
    }

    public void setReason116(String reason116) {
        this.reason116 = reason116;
    }

    @Basic
    @Column(name = "reason_117", nullable = true, length = 40)
    public String getReason117() {
        return reason117;
    }

    public void setReason117(String reason117) {
        this.reason117 = reason117;
    }

    @Basic
    @Column(name = "reason_118", nullable = true, length = 40)
    public String getReason118() {
        return reason118;
    }

    public void setReason118(String reason118) {
        this.reason118 = reason118;
    }

    @Basic
    @Column(name = "reason_119", nullable = true, length = 40)
    public String getReason119() {
        return reason119;
    }

    public void setReason119(String reason119) {
        this.reason119 = reason119;
    }

    @Basic
    @Column(name = "reason_120", nullable = true, length = 40)
    public String getReason120() {
        return reason120;
    }

    public void setReason120(String reason120) {
        this.reason120 = reason120;
    }

    @Basic
    @Column(name = "reason_121", nullable = true, length = 40)
    public String getReason121() {
        return reason121;
    }

    public void setReason121(String reason121) {
        this.reason121 = reason121;
    }

    @Basic
    @Column(name = "reason_122", nullable = true, length = 40)
    public String getReason122() {
        return reason122;
    }

    public void setReason122(String reason122) {
        this.reason122 = reason122;
    }

    @Basic
    @Column(name = "reason_123", nullable = true, length = 40)
    public String getReason123() {
        return reason123;
    }

    public void setReason123(String reason123) {
        this.reason123 = reason123;
    }

    @Basic
    @Column(name = "reason_124", nullable = true, length = 40)
    public String getReason124() {
        return reason124;
    }

    public void setReason124(String reason124) {
        this.reason124 = reason124;
    }

    @Basic
    @Column(name = "reason_125", nullable = true, length = 40)
    public String getReason125() {
        return reason125;
    }

    public void setReason125(String reason125) {
        this.reason125 = reason125;
    }

    @Basic
    @Column(name = "reason_126", nullable = true, length = 40)
    public String getReason126() {
        return reason126;
    }

    public void setReason126(String reason126) {
        this.reason126 = reason126;
    }

    @Basic
    @Column(name = "reason_127", nullable = true, length = 40)
    public String getReason127() {
        return reason127;
    }

    public void setReason127(String reason127) {
        this.reason127 = reason127;
    }

    @Basic
    @Column(name = "reason_128", nullable = true, length = 40)
    public String getReason128() {
        return reason128;
    }

    public void setReason128(String reason128) {
        this.reason128 = reason128;
    }

    @Basic
    @Column(name = "reason_129", nullable = true, length = 40)
    public String getReason129() {
        return reason129;
    }

    public void setReason129(String reason129) {
        this.reason129 = reason129;
    }

    @Basic
    @Column(name = "reason_130", nullable = true, length = 40)
    public String getReason130() {
        return reason130;
    }

    public void setReason130(String reason130) {
        this.reason130 = reason130;
    }

    @Basic
    @Column(name = "reason_131", nullable = true, length = 40)
    public String getReason131() {
        return reason131;
    }

    public void setReason131(String reason131) {
        this.reason131 = reason131;
    }

    @Basic
    @Column(name = "reason_132", nullable = true, length = 40)
    public String getReason132() {
        return reason132;
    }

    public void setReason132(String reason132) {
        this.reason132 = reason132;
    }

    @Basic
    @Column(name = "answer_relation", nullable = true, length = 20)
    public String getAnswerRelation() {
        return answerRelation;
    }

    public void setAnswerRelation(String answerRelation) {
        this.answerRelation = answerRelation;
    }

    @Basic
    @Column(name = "rough", nullable = true, length = 20)
    public String getRough() {
        return rough;
    }

    public void setRough(String rough) {
        this.rough = rough;
    }

    @Basic
    @Column(name = "norm", nullable = true, length = 20)
    public String getNorm() {
        return norm;
    }

    public void setNorm(String norm) {
        this.norm = norm;
    }

    @Basic
    @Column(name = "level", nullable = true, length = 20)
    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }
}
