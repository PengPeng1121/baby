package com.free4lab.babycheckup.model;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by Administrator on 2017/7/12.
 */

@Entity
@Table(name = "result_ddst", schema = "babycheckup")
public class ResultDDST {
    private int id;
    private int testId;
    private int babyId;
    private Timestamp time;
    private int hosId;
    private int userId;
    private String state;
    private int a1;
    private int a2;
    private int a3;
    private int a4;
    private String result;
    private int score1;
    private int score2;
    private int score3;
    private int score4;
    private int score5;
    private int score6;
    private int score7;
    private int score8;
    private int score9;
    private int score10;
    private int score11;
    private int score12;
    private int score13;
    private int score14;
    private int score15;
    private int score16;
    private int score17;
    private int score18;
    private int score19;
    private int score20;
    private int score21;
    private int score22;
    private int score23;
    private int score24;
    private int score25;
    private int score26;
    private int score27;
    private int score28;
    private int score29;
    private int score30;
    private int score31;
    private int score32;
    private int score33;
    private int score34;
    private int score35;
    private int score36;
    private int score37;
    private int score38;
    private int score39;
    private int score40;
    private int score41;
    private int score42;
    private int score43;
    private int score44;
    private int score45;
    private int score46;
    private int score47;
    private int score48;
    private int score49;
    private int score50;
    private int score51;
    private int score52;
    private int score53;
    private int score54;
    private int score55;
    private int score56;
    private int score57;
    private int score58;
    private int score59;
    private int score60;
    private int score61;
    private int score62;
    private int score63;
    private int score64;
    private int score65;
    private int score66;
    private int score67;
    private int score68;
    private int score69;
    private int score70;
    private int score71;
    private int score72;
    private int score73;
    private int score74;
    private int score75;
    private int score76;
    private int score77;
    private int score78;
    private int score79;
    private int score80;
    private int score81;
    private int score82;
    private int score83;
    private int score84;
    private int score85;
    private int score86;
    private int score87;
    private int score88;
    private int score89;
    private int score90;
    private int score91;
    private int score92;
    private int score93;
    private int score94;
    private int score95;
    private int score96;
    private int score97;
    private int score98;
    private int score99;
    private int score100;
    private int score101;
    private int score102;
    private int score103;
    private int score104;

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
    @Column(name = "result", nullable = true)
    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    @Basic
    @Column(name = "score_1", nullable = true)
    public int getScore1() {
        return score1;
    }

    public void setScore1(int score1) {
        this.score1 = score1;
    }

    @Basic
    @Column(name = "score_2", nullable = true)
    public int getScore2() {
        return score2;
    }

    public void setScore2(int score2) {
        this.score2 = score2;
    }

    @Basic
    @Column(name = "score_3", nullable = true)
    public int getScore3() {
        return score3;
    }

    public void setScore3(int score3) {
        this.score3 = score3;
    }

    @Basic
    @Column(name = "score_4", nullable = true)
    public int getScore4() {
        return score4;
    }

    public void setScore4(int score4) {
        this.score4 = score4;
    }

    @Basic
    @Column(name = "score_5", nullable = true)
    public int getScore5() {
        return score5;
    }

    public void setScore5(int score5) {
        this.score5 = score5;
    }

    @Basic
    @Column(name = "score_6", nullable = true)
    public int getScore6() {
        return score6;
    }

    public void setScore6(int score6) {
        this.score6 = score6;
    }

    @Basic
    @Column(name = "score_7", nullable = true)
    public int getScore7() {
        return score7;
    }

    public void setScore7(int score7) {
        this.score7 = score7;
    }

    @Basic
    @Column(name = "score_8", nullable = true)
    public int getScore8() {
        return score8;
    }

    public void setScore8(int score8) {
        this.score8 = score8;
    }

    @Basic
    @Column(name = "score_9", nullable = true)
    public int getScore9() {
        return score9;
    }

    public void setScore9(int score9) {
        this.score9 = score9;
    }

    @Basic
    @Column(name = "score_10", nullable = true)
    public int getScore10() {
        return score10;
    }

    public void setScore10(int score10) {
        this.score10 = score10;
    }

    @Basic
    @Column(name = "score_11", nullable = true)
    public int getScore11() {
        return score11;
    }

    public void setScore11(int score11) {
        this.score11 = score11;
    }

    @Basic
    @Column(name = "score_12", nullable = true)
    public int getScore12() {
        return score12;
    }

    public void setScore12(int score12) {
        this.score12 = score12;
    }

    @Basic
    @Column(name = "score_13", nullable = true)
    public int getScore13() {
        return score13;
    }

    public void setScore13(int score13) {
        this.score13 = score13;
    }

    @Basic
    @Column(name = "score_14", nullable = true)
    public int getScore14() {
        return score14;
    }

    public void setScore14(int score14) {
        this.score14 = score14;
    }

    @Basic
    @Column(name = "score_15", nullable = true)
    public int getScore15() {
        return score15;
    }

    public void setScore15(int score15) {
        this.score15 = score15;
    }

    @Basic
    @Column(name = "score_16", nullable = true)
    public int getScore16() {
        return score16;
    }

    public void setScore16(int score16) {
        this.score16 = score16;
    }

    @Basic
    @Column(name = "score_17", nullable = true)
    public int getScore17() {
        return score17;
    }

    public void setScore17(int score17) {
        this.score17 = score17;
    }

    @Basic
    @Column(name = "score_18", nullable = true)
    public int getScore18() {
        return score18;
    }

    public void setScore18(int score18) {
        this.score18 = score18;
    }

    @Basic
    @Column(name = "score_19", nullable = true)
    public int getScore19() {
        return score19;
    }

    public void setScore19(int score19) {
        this.score19 = score19;
    }

    @Basic
    @Column(name = "score_20", nullable = true)
    public int getScore20() {
        return score20;
    }

    public void setScore20(int score20) {
        this.score20 = score20;
    }

    @Basic
    @Column(name = "score_21", nullable = true)
    public int getScore21() {
        return score21;
    }

    public void setScore21(int score21) {
        this.score21 = score21;
    }

    @Basic
    @Column(name = "score_22", nullable = true)
    public int getScore22() {
        return score22;
    }

    public void setScore22(int score22) {
        this.score22 = score22;
    }

    @Basic
    @Column(name = "score_23", nullable = true)
    public int getScore23() {
        return score23;
    }

    public void setScore23(int score23) {
        this.score23 = score23;
    }

    @Basic
    @Column(name = "score_24", nullable = true)
    public int getScore24() {
        return score24;
    }

    public void setScore24(int score24) {
        this.score24 = score24;
    }

    @Basic
    @Column(name = "score_25", nullable = true)
    public int getScore25() {
        return score25;
    }

    public void setScore25(int score25) {
        this.score25 = score25;
    }

    @Basic
    @Column(name = "score_26", nullable = true)
    public int getScore26() {
        return score26;
    }

    public void setScore26(int score26) {
        this.score26 = score26;
    }

    @Basic
    @Column(name = "score_27", nullable = true)
    public int getScore27() {
        return score27;
    }

    public void setScore27(int score27) {
        this.score27 = score27;
    }

    @Basic
    @Column(name = "score_28", nullable = true)
    public int getScore28() {
        return score28;
    }

    public void setScore28(int score28) {
        this.score28 = score28;
    }

    @Basic
    @Column(name = "score_29", nullable = true)
    public int getScore29() {
        return score29;
    }

    public void setScore29(int score29) {
        this.score29 = score29;
    }

    @Basic
    @Column(name = "score_30", nullable = true)
    public int getScore30() {
        return score30;
    }

    public void setScore30(int score30) {
        this.score30 = score30;
    }

    @Basic
    @Column(name = "score_31", nullable = true)
    public int getScore31() {
        return score31;
    }

    public void setScore31(int score31) {
        this.score31 = score31;
    }

    @Basic
    @Column(name = "score_32", nullable = true)
    public int getScore32() {
        return score32;
    }

    public void setScore32(int score32) {
        this.score32 = score32;
    }

    @Basic
    @Column(name = "score_33", nullable = true)
    public int getScore33() {
        return score33;
    }

    public void setScore33(int score33) {
        this.score33 = score33;
    }

    @Basic
    @Column(name = "score_34", nullable = true)
    public int getScore34() {
        return score34;
    }

    public void setScore34(int score34) {
        this.score34 = score34;
    }

    @Basic
    @Column(name = "score_35", nullable = true)
    public int getScore35() {
        return score35;
    }

    public void setScore35(int score35) {
        this.score35 = score35;
    }

    @Basic
    @Column(name = "score_36", nullable = true)
    public int getScore36() {
        return score36;
    }

    public void setScore36(int score36) {
        this.score36 = score36;
    }

    @Basic
    @Column(name = "score_37", nullable = true)
    public int getScore37() {
        return score37;
    }

    public void setScore37(int score37) {
        this.score37 = score37;
    }

    @Basic
    @Column(name = "score_38", nullable = true)
    public int getScore38() {
        return score38;
    }

    public void setScore38(int score38) {
        this.score38 = score38;
    }

    @Basic
    @Column(name = "score_39", nullable = true)
    public int getScore39() {
        return score39;
    }

    public void setScore39(int score39) {
        this.score39 = score39;
    }

    @Basic
    @Column(name = "score_40", nullable = true)
    public int getScore40() {
        return score40;
    }

    public void setScore40(int score40) {
        this.score40 = score40;
    }

    @Basic
    @Column(name = "score_41", nullable = true)
    public int getScore41() {
        return score41;
    }

    public void setScore41(int score41) {
        this.score41 = score41;
    }

    @Basic
    @Column(name = "score_42", nullable = true)
    public int getScore42() {
        return score42;
    }

    public void setScore42(int score42) {
        this.score42 = score42;
    }

    @Basic
    @Column(name = "score_43", nullable = true)
    public int getScore43() {
        return score43;
    }

    public void setScore43(int score43) {
        this.score43 = score43;
    }

    @Basic
    @Column(name = "score_44", nullable = true)
    public int getScore44() {
        return score44;
    }

    public void setScore44(int score44) {
        this.score44 = score44;
    }

    @Basic
    @Column(name = "score_45", nullable = true)
    public int getScore45() {
        return score45;
    }

    public void setScore45(int score45) {
        this.score45 = score45;
    }

    @Basic
    @Column(name = "score_46", nullable = true)
    public int getScore46() {
        return score46;
    }

    public void setScore46(int score46) {
        this.score46 = score46;
    }

    @Basic
    @Column(name = "score_47", nullable = true)
    public int getScore47() {
        return score47;
    }

    public void setScore47(int score47) {
        this.score47 = score47;
    }

    @Basic
    @Column(name = "score_48", nullable = true)
    public int getScore48() {
        return score48;
    }

    public void setScore48(int score48) {
        this.score48 = score48;
    }

    @Basic
    @Column(name = "score_49", nullable = true)
    public int getScore49() {
        return score49;
    }

    public void setScore49(int score49) {
        this.score49 = score49;
    }

    @Basic
    @Column(name = "score_50", nullable = true)
    public int getScore50() {
        return score50;
    }

    public void setScore50(int score50) {
        this.score50 = score50;
    }

    @Basic
    @Column(name = "score_51", nullable = true)
    public int getScore51() {
        return score51;
    }

    public void setScore51(int score51) {
        this.score51 = score51;
    }

    @Basic
    @Column(name = "score_52", nullable = true)
    public int getScore52() {
        return score52;
    }

    public void setScore52(int score52) {
        this.score52 = score52;
    }

    @Basic
    @Column(name = "score_53", nullable = true)
    public int getScore53() {
        return score53;
    }

    public void setScore53(int score53) {
        this.score53 = score53;
    }

    @Basic
    @Column(name = "score_54", nullable = true)
    public int getScore54() {
        return score54;
    }

    public void setScore54(int score54) {
        this.score54 = score54;
    }

    @Basic
    @Column(name = "score_55", nullable = true)
    public int getScore55() {
        return score55;
    }

    public void setScore55(int score55) {
        this.score55 = score55;
    }

    @Basic
    @Column(name = "score_56", nullable = true)
    public int getScore56() {
        return score56;
    }

    public void setScore56(int score56) {
        this.score56 = score56;
    }

    @Basic
    @Column(name = "score_57", nullable = true)
    public int getScore57() {
        return score57;
    }

    public void setScore57(int score57) {
        this.score57 = score57;
    }

    @Basic
    @Column(name = "score_58", nullable = true)
    public int getScore58() {
        return score58;
    }

    public void setScore58(int score58) {
        this.score58 = score58;
    }

    @Basic
    @Column(name = "score_59", nullable = true)
    public int getScore59() {
        return score59;
    }

    public void setScore59(int score59) {
        this.score59 = score59;
    }

    @Basic
    @Column(name = "score_60", nullable = true)
    public int getScore60() {
        return score60;
    }

    public void setScore60(int score60) {
        this.score60 = score60;
    }

    @Basic
    @Column(name = "score_61", nullable = true)
    public int getScore61() {
        return score61;
    }

    public void setScore61(int score61) {
        this.score61 = score61;
    }

    @Basic
    @Column(name = "score_62", nullable = true)
    public int getScore62() {
        return score62;
    }

    public void setScore62(int score62) {
        this.score62 = score62;
    }

    @Basic
    @Column(name = "score_63", nullable = true)
    public int getScore63() {
        return score63;
    }

    public void setScore63(int score63) {
        this.score63 = score63;
    }

    @Basic
    @Column(name = "score_64", nullable = true)
    public int getScore64() {
        return score64;
    }

    public void setScore64(int score64) {
        this.score64 = score64;
    }

    @Basic
    @Column(name = "score_65", nullable = true)
    public int getScore65() {
        return score65;
    }

    public void setScore65(int score65) {
        this.score65 = score65;
    }

    @Basic
    @Column(name = "score_66", nullable = true)
    public int getScore66() {
        return score66;
    }

    public void setScore66(int score66) {
        this.score66 = score66;
    }

    @Basic
    @Column(name = "score_67", nullable = true)
    public int getScore67() {
        return score67;
    }

    public void setScore67(int score67) {
        this.score67 = score67;
    }

    @Basic
    @Column(name = "score_68", nullable = true)
    public int getScore68() {
        return score68;
    }

    public void setScore68(int score68) {
        this.score68 = score68;
    }

    @Basic
    @Column(name = "score_69", nullable = true)
    public int getScore69() {
        return score69;
    }

    public void setScore69(int score69) {
        this.score69 = score69;
    }

    @Basic
    @Column(name = "score_70", nullable = true)
    public int getScore70() {
        return score70;
    }

    public void setScore70(int score70) {
        this.score70 = score70;
    }

    @Basic
    @Column(name = "score_71", nullable = true)
    public int getScore71() {
        return score71;
    }

    public void setScore71(int score71) {
        this.score71 = score71;
    }

    @Basic
    @Column(name = "score_72", nullable = true)
    public int getScore72() {
        return score72;
    }

    public void setScore72(int score72) {
        this.score72 = score72;
    }

    @Basic
    @Column(name = "score_73", nullable = true)
    public int getScore73() {
        return score73;
    }

    public void setScore73(int score73) {
        this.score73 = score73;
    }

    @Basic
    @Column(name = "score_74", nullable = true)
    public int getScore74() {
        return score74;
    }

    public void setScore74(int score74) {
        this.score74 = score74;
    }

    @Basic
    @Column(name = "score_75", nullable = true)
    public int getScore75() {
        return score75;
    }

    public void setScore75(int score75) {
        this.score75 = score75;
    }

    @Basic
    @Column(name = "score_76", nullable = true)
    public int getScore76() {
        return score76;
    }

    public void setScore76(int score76) {
        this.score76 = score76;
    }

    @Basic
    @Column(name = "score_77", nullable = true)
    public int getScore77() {
        return score77;
    }

    public void setScore77(int score77) {
        this.score77 = score77;
    }

    @Basic
    @Column(name = "score_78", nullable = true)
    public int getScore78() {
        return score78;
    }

    public void setScore78(int score78) {
        this.score78 = score78;
    }

    @Basic
    @Column(name = "score_79", nullable = true)
    public int getScore79() {
        return score79;
    }

    public void setScore79(int score79) {
        this.score79 = score79;
    }

    @Basic
    @Column(name = "score_80", nullable = true)
    public int getScore80() {
        return score80;
    }

    public void setScore80(int score80) {
        this.score80 = score80;
    }

    @Basic
    @Column(name = "score_81", nullable = true)
    public int getScore81() {
        return score81;
    }

    public void setScore81(int score81) {
        this.score81 = score81;
    }

    @Basic
    @Column(name = "score_82", nullable = true)
    public int getScore82() {
        return score82;
    }

    public void setScore82(int score82) {
        this.score82 = score82;
    }

    @Basic
    @Column(name = "score_83", nullable = true)
    public int getScore83() {
        return score83;
    }

    public void setScore83(int score83) {
        this.score83 = score83;
    }

    @Basic
    @Column(name = "score_84", nullable = true)
    public int getScore84() {
        return score84;
    }

    public void setScore84(int score84) {
        this.score84 = score84;
    }

    @Basic
    @Column(name = "score_85", nullable = true)
    public int getScore85() {
        return score85;
    }

    public void setScore85(int score85) {
        this.score85 = score85;
    }

    @Basic
    @Column(name = "score_86", nullable = true)
    public int getScore86() {
        return score86;
    }

    public void setScore86(int score86) {
        this.score86 = score86;
    }

    @Basic
    @Column(name = "score_87", nullable = true)
    public int getScore87() {
        return score87;
    }

    public void setScore87(int score87) {
        this.score87 = score87;
    }

    @Basic
    @Column(name = "score_88", nullable = true)
    public int getScore88() {
        return score88;
    }

    public void setScore88(int score88) {
        this.score88 = score88;
    }

    @Basic
    @Column(name = "score_89", nullable = true)
    public int getScore89() {
        return score89;
    }

    public void setScore89(int score89) {
        this.score89 = score89;
    }

    @Basic
    @Column(name = "score_90", nullable = true)
    public int getScore90() {
        return score90;
    }

    public void setScore90(int score90) {
        this.score90 = score90;
    }

    @Basic
    @Column(name = "score_91", nullable = true)
    public int getScore91() {
        return score91;
    }

    public void setScore91(int score91) {
        this.score91 = score91;
    }

    @Basic
    @Column(name = "score_92", nullable = true)
    public int getScore92() {
        return score92;
    }

    public void setScore92(int score92) {
        this.score92 = score92;
    }

    @Basic
    @Column(name = "score_93", nullable = true)
    public int getScore93() {
        return score93;
    }

    public void setScore93(int score93) {
        this.score93 = score93;
    }

    @Basic
    @Column(name = "score_94", nullable = true)
    public int getScore94() {
        return score94;
    }

    public void setScore94(int score94) {
        this.score94 = score94;
    }

    @Basic
    @Column(name = "score_95", nullable = true)
    public int getScore95() {
        return score95;
    }

    public void setScore95(int score95) {
        this.score95 = score95;
    }

    @Basic
    @Column(name = "score_96", nullable = true)
    public int getScore96() {
        return score96;
    }

    public void setScore96(int score96) {
        this.score96 = score96;
    }

    @Basic
    @Column(name = "score_97", nullable = true)
    public int getScore97() {
        return score97;
    }

    public void setScore97(int score97) {
        this.score97 = score97;
    }

    @Basic
    @Column(name = "score_98", nullable = true)
    public int getScore98() {
        return score98;
    }

    public void setScore98(int score98) {
        this.score98 = score98;
    }

    @Basic
    @Column(name = "score_99", nullable = true)
    public int getScore99() {
        return score99;
    }

    public void setScore99(int score99) {
        this.score99 = score99;
    }

    @Basic
    @Column(name = "score_100", nullable = true)
    public int getScore100() {
        return score100;
    }

    public void setScore100(int score100) {
        this.score100 = score100;
    }

    @Basic
    @Column(name = "score_101", nullable = true)
    public int getScore101() {
        return score101;
    }

    public void setScore101(int score101) {
        this.score101 = score101;
    }


    @Basic
    @Column(name = "score_102", nullable = true)
    public int getScore102() {
        return score102;
    }

    public void setScore102(int score102) {
        this.score102 = score102;
    }

    @Basic
    @Column(name = "score_103", nullable = true)
    public int getScore103() {
        return score103;
    }

    public void setScore103(int score103) {
        this.score103 = score103;
    }

    @Basic
    @Column(name = "score_104", nullable = true)
    public int getScore104() {
        return score104;
    }

    public void setScore104(int score104) {
        this.score104 = score104;
    }


}
