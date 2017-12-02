package com.free4lab.babycheckup.model;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by Administrator on 2017/7/12.
 */

@Entity
@Table(name = "result50", schema = "babycheckup")
public class Result50 {
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
    private Byte score1;
    private String reason1;
    private Byte score2;
    private String reason2;
    private Byte score3;
    private String reason3;
    private Byte score4;
    private String reason4;
    private Byte score5;
    private String reason5;
    private Byte score6;
    private String reason6;
    private Byte score7;
    private String reason7;
    private Byte score8;
    private String reason8;
    private Byte score9;
    private String reason9;
    private Byte score10;
    private String reason10;
    private Byte score11;
    private String reason11;
    private Byte score12;
    private String reason12;
    private Byte score13;
    private String reason13;
    private Byte score14;
    private String reason14;
    private Byte score15;
    private String reason15;
    private Byte score16;
    private String reason16;
    private Byte score17;
    private String reason17;
    private Byte score18;
    private String reason18;
    private Byte score19;
    private String reason19;
    private Byte score20;
    private String reason20;
    private Byte score21;
    private String reason21;
    private Byte score22;
    private String reason22;
    private Byte score23;
    private String reason23;
    private Byte score24;
    private String reason24;
    private Byte score25;
    private String reason25;
    private Byte score26;
    private String reason26;
    private Byte score27;
    private String reason27;
    private Byte score28;
    private String reason28;
    private Byte score29;
    private String reason29;
    private Byte score30;
    private String reason30;
    private Byte score31;
    private String reason31;
    private Byte score32;
    private String reason32;
    private Byte score33;
    private String reason33;
    private Byte score34;
    private String reason34;
    private Byte score35;
    private String reason35;
    private Byte score36;
    private String reason36;
    private Byte score37;
    private String reason37;
    private Byte score38;
    private String reason38;
    private Byte score39;
    private String reason39;
    private Byte score40;
    private String reason40;
    private Byte score41;
    private String reason41;
    private Byte score42;
    private String reason42;
    private Byte score43;
    private String reason43;
    private Byte score44;
    private String reason44;
    private Byte score45;
    private String reason45;
    private Byte score46;
    private String reason46;
    private Byte score47;
    private String reason47;
    private Byte score48;
    private String reason48;
    private Byte score49;
    private String reason49;
    private Byte score50;
    private String reason50;

    private String desc1;
    private String desc2;
    private String desc3;
    private String desc4;
    private String desc5;
    private String desc6;
    private String desc7;
    private String desc8;
    private String desc9;
    private String desc10;
    private String desc11;
    private String desc12;
    private String desc13;
    private String desc14;
    private String desc15;
    private String desc16;
    private String desc17;
    private String desc18;
    private String desc19;
    private String desc20;
    private String desc21;
    private String desc22;
    private String desc23;
    private String desc24;
    private String desc25;
    private String desc26;
    private String desc27;
    private String desc28;
    private String desc29;
    private String desc30;
    private String desc31;
    private String desc32;
    private String desc33;
    private String desc34;
    private String desc35;
    private String desc36;
    private String desc37;
    private String desc38;
    private String desc39;
    private String desc40;
    private String desc41;
    private String desc42;
    private String desc43;
    private String desc44;
    private String desc45;
    private String desc46;
    private String desc47;
    private String desc48;
    private String desc49;
    private String desc50;


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
    @Column(name = "score_1", nullable = true)
    public Byte getScore1() {
        return score1;
    }

    public void setScore1(Byte score1) {
        this.score1 = score1;
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
    @Column(name = "score_2", nullable = true)
    public Byte getScore2() {
        return score2;
    }

    public void setScore2(Byte score2) {
        this.score2 = score2;
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
    @Column(name = "score_3", nullable = true)
    public Byte getScore3() {
        return score3;
    }

    public void setScore3(Byte score3) {
        this.score3 = score3;
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
    @Column(name = "score_4", nullable = true)
    public Byte getScore4() {
        return score4;
    }

    public void setScore4(Byte score4) {
        this.score4 = score4;
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
    @Column(name = "score_5", nullable = true)
    public Byte getScore5() {
        return score5;
    }

    public void setScore5(Byte score5) {
        this.score5 = score5;
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
    @Column(name = "score_6", nullable = true)
    public Byte getScore6() {
        return score6;
    }

    public void setScore6(Byte score6) {
        this.score6 = score6;
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
    @Column(name = "score_7", nullable = true)
    public Byte getScore7() {
        return score7;
    }

    public void setScore7(Byte score7) {
        this.score7 = score7;
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
    @Column(name = "score_8", nullable = true)
    public Byte getScore8() {
        return score8;
    }

    public void setScore8(Byte score8) {
        this.score8 = score8;
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
    @Column(name = "score_9", nullable = true)
    public Byte getScore9() {
        return score9;
    }

    public void setScore9(Byte score9) {
        this.score9 = score9;
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
    @Column(name = "score_10", nullable = true)
    public Byte getScore10() {
        return score10;
    }

    public void setScore10(Byte score10) {
        this.score10 = score10;
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
    @Column(name = "score_11", nullable = true)
    public Byte getScore11() {
        return score11;
    }

    public void setScore11(Byte score11) {
        this.score11 = score11;
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
    @Column(name = "score_12", nullable = true)
    public Byte getScore12() {
        return score12;
    }

    public void setScore12(Byte score12) {
        this.score12 = score12;
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
    @Column(name = "score_13", nullable = true)
    public Byte getScore13() {
        return score13;
    }

    public void setScore13(Byte score13) {
        this.score13 = score13;
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
    @Column(name = "score_14", nullable = true)
    public Byte getScore14() {
        return score14;
    }

    public void setScore14(Byte score14) {
        this.score14 = score14;
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
    @Column(name = "score_15", nullable = true)
    public Byte getScore15() {
        return score15;
    }

    public void setScore15(Byte score15) {
        this.score15 = score15;
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
    @Column(name = "score_16", nullable = true)
    public Byte getScore16() {
        return score16;
    }

    public void setScore16(Byte score16) {
        this.score16 = score16;
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
    @Column(name = "score_17", nullable = true)
    public Byte getScore17() {
        return score17;
    }

    public void setScore17(Byte score17) {
        this.score17 = score17;
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
    @Column(name = "score_18", nullable = true)
    public Byte getScore18() {
        return score18;
    }

    public void setScore18(Byte score18) {
        this.score18 = score18;
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
    @Column(name = "score_19", nullable = true)
    public Byte getScore19() {
        return score19;
    }

    public void setScore19(Byte score19) {
        this.score19 = score19;
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
    @Column(name = "score_20", nullable = true)
    public Byte getScore20() {
        return score20;
    }

    public void setScore20(Byte score20) {
        this.score20 = score20;
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
    @Column(name = "score_21", nullable = true)
    public Byte getScore21() {
        return score21;
    }

    public void setScore21(Byte score21) {
        this.score21 = score21;
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
    @Column(name = "score_22", nullable = true)
    public Byte getScore22() {
        return score22;
    }

    public void setScore22(Byte score22) {
        this.score22 = score22;
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
    @Column(name = "score_23", nullable = true)
    public Byte getScore23() {
        return score23;
    }

    public void setScore23(Byte score23) {
        this.score23 = score23;
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
    @Column(name = "score_24", nullable = true)
    public Byte getScore24() {
        return score24;
    }

    public void setScore24(Byte score24) {
        this.score24 = score24;
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
    @Column(name = "score_25", nullable = true)
    public Byte getScore25() {
        return score25;
    }

    public void setScore25(Byte score25) {
        this.score25 = score25;
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
    @Column(name = "score_26", nullable = true)
    public Byte getScore26() {
        return score26;
    }

    public void setScore26(Byte score26) {
        this.score26 = score26;
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
    @Column(name = "score_27", nullable = true)
    public Byte getScore27() {
        return score27;
    }

    public void setScore27(Byte score27) {
        this.score27 = score27;
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
    @Column(name = "score_28", nullable = true)
    public Byte getScore28() {
        return score28;
    }

    public void setScore28(Byte score28) {
        this.score28 = score28;
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
    @Column(name = "score_29", nullable = true)
    public Byte getScore29() {
        return score29;
    }

    public void setScore29(Byte score29) {
        this.score29 = score29;
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
    @Column(name = "score_30", nullable = true)
    public Byte getScore30() {
        return score30;
    }

    public void setScore30(Byte score30) {
        this.score30 = score30;
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
    @Column(name = "score_31", nullable = true)
    public Byte getScore31() {
        return score31;
    }

    public void setScore31(Byte score31) {
        this.score31 = score31;
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
    @Column(name = "score_32", nullable = true)
    public Byte getScore32() {
        return score32;
    }

    public void setScore32(Byte score32) {
        this.score32 = score32;
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
    @Column(name = "score_33", nullable = true)
    public Byte getScore33() {
        return score33;
    }

    public void setScore33(Byte score33) {
        this.score33 = score33;
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
    @Column(name = "score_34", nullable = true)
    public Byte getScore34() {
        return score34;
    }

    public void setScore34(Byte score34) {
        this.score34 = score34;
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
    @Column(name = "score_35", nullable = true)
    public Byte getScore35() {
        return score35;
    }

    public void setScore35(Byte score35) {
        this.score35 = score35;
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
    @Column(name = "score_36", nullable = true)
    public Byte getScore36() {
        return score36;
    }

    public void setScore36(Byte score36) {
        this.score36 = score36;
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
    @Column(name = "score_37", nullable = true)
    public Byte getScore37() {
        return score37;
    }

    public void setScore37(Byte score37) {
        this.score37 = score37;
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
    @Column(name = "score_38", nullable = true)
    public Byte getScore38() {
        return score38;
    }

    public void setScore38(Byte score38) {
        this.score38 = score38;
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
    @Column(name = "score_39", nullable = true)
    public Byte getScore39() {
        return score39;
    }

    public void setScore39(Byte score39) {
        this.score39 = score39;
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
    @Column(name = "score_40", nullable = true)
    public Byte getScore40() {
        return score40;
    }

    public void setScore40(Byte score40) {
        this.score40 = score40;
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
    @Column(name = "score_41", nullable = true)
    public Byte getScore41() {
        return score41;
    }

    public void setScore41(Byte score41) {
        this.score41 = score41;
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
    @Column(name = "score_42", nullable = true)
    public Byte getScore42() {
        return score42;
    }

    public void setScore42(Byte score42) {
        this.score42 = score42;
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
    @Column(name = "score_43", nullable = true)
    public Byte getScore43() {
        return score43;
    }

    public void setScore43(Byte score43) {
        this.score43 = score43;
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
    @Column(name = "score_44", nullable = true)
    public Byte getScore44() {
        return score44;
    }

    public void setScore44(Byte score44) {
        this.score44 = score44;
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
    @Column(name = "score_45", nullable = true)
    public Byte getScore45() {
        return score45;
    }

    public void setScore45(Byte score45) {
        this.score45 = score45;
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
    @Column(name = "score_46", nullable = true)
    public Byte getScore46() {
        return score46;
    }

    public void setScore46(Byte score46) {
        this.score46 = score46;
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
    @Column(name = "score_47", nullable = true)
    public Byte getScore47() {
        return score47;
    }

    public void setScore47(Byte score47) {
        this.score47 = score47;
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
    @Column(name = "score_48", nullable = true)
    public Byte getScore48() {
        return score48;
    }

    public void setScore48(Byte score48) {
        this.score48 = score48;
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
    @Column(name = "score_49", nullable = true)
    public Byte getScore49() {
        return score49;
    }

    public void setScore49(Byte score49) {
        this.score49 = score49;
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
    @Column(name = "score_50", nullable = true)
    public Byte getScore50() {
        return score50;
    }

    public void setScore50(Byte score50) {
        this.score50 = score50;
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
    @Column(name = "answer_relation", nullable = true, length = 20)
    public String getAnswerRelation() {
        return answerRelation;
    }

    public void setAnswerRelation(String answerRelation) {
        this.answerRelation = answerRelation;
    }

    @Basic
    @Column(name = "desc_1", nullable = true, length = 255)
    public String getDesc1() {
        return desc1;
    }

    public void setDesc1(String desc1) {
        this.desc1 = desc1;
    }

    @Basic
    @Column(name = "desc_2", nullable = true, length = 255)
    public String getDesc2() {
        return desc2;
    }

    public void setDesc2(String desc2) {
        this.desc2 = desc2;
    }

    @Basic
    @Column(name = "desc_3", nullable = true, length = 255)
    public String getDesc3() {
        return desc3;
    }

    public void setDesc3(String desc3) {
        this.desc3 = desc3;
    }
    @Basic
    @Column(name = "desc_4", nullable = true, length = 255)
    public String getDesc4() {
        return desc4;
    }

    public void setDesc4(String desc4) {
        this.desc4 = desc4;
    }
    @Basic
    @Column(name = "desc_5", nullable = true, length = 255)
    public String getDesc5() {
        return desc5;
    }

    public void setDesc5(String desc5) {
        this.desc5 = desc5;
    }
    @Basic
    @Column(name = "desc_6", nullable = true, length = 255)
    public String getDesc6() {
        return desc6;
    }

    public void setDesc6(String desc6) {
        this.desc6 = desc6;
    }
    @Basic
    @Column(name = "desc_7", nullable = true, length = 255)
    public String getDesc7() {
        return desc7;
    }

    public void setDesc7(String desc7) {
        this.desc7 = desc7;
    }
    @Basic
    @Column(name = "desc_8", nullable = true, length = 255)
    public String getDesc8() {
        return desc8;
    }

    public void setDesc8(String desc8) {
        this.desc8 = desc8;
    }
    @Basic
    @Column(name = "desc_9", nullable = true, length = 255)
    public String getDesc9() {
        return desc9;
    }

    public void setDesc9(String desc9) {
        this.desc9 = desc9;
    }
    @Basic
    @Column(name = "desc_10", nullable = true, length = 255)
    public String getDesc10() {
        return desc10;
    }

    public void setDesc10(String desc10) {
        this.desc10 = desc10;
    }
    @Basic
    @Column(name = "desc_11", nullable = true, length = 255)
    public String getDesc11() {
        return desc11;
    }

    public void setDesc11(String desc11) {
        this.desc11 = desc11;
    }
    @Basic
    @Column(name = "desc_12", nullable = true, length = 255)
    public String getDesc12() {
        return desc12;
    }

    public void setDesc12(String desc12) {
        this.desc12 = desc12;
    }
    @Basic
    @Column(name = "desc_13", nullable = true, length = 255)
    public String getDesc13() {
        return desc13;
    }

    public void setDesc13(String desc13) {
        this.desc13 = desc13;
    }
    @Basic
    @Column(name = "desc_14", nullable = true, length = 255)
    public String getDesc14() {
        return desc14;
    }

    public void setDesc14(String desc14) {
        this.desc14 = desc14;
    }
    @Basic
    @Column(name = "desc_15", nullable = true, length = 255)
    public String getDesc15() {
        return desc15;
    }

    public void setDesc15(String desc15) {
        this.desc15 = desc15;
    }
    @Basic
    @Column(name = "desc_16", nullable = true, length = 255)
    public String getDesc16() {
        return desc16;
    }

    public void setDesc16(String desc16) {
        this.desc16 = desc16;
    }
    @Basic
    @Column(name = "desc_17", nullable = true, length = 255)
    public String getDesc17() {
        return desc17;
    }

    public void setDesc17(String desc17) {
        this.desc17 = desc17;
    }
    @Basic
    @Column(name = "desc_18", nullable = true, length = 255)
    public String getDesc18() {
        return desc18;
    }

    public void setDesc18(String desc18) {
        this.desc18 = desc18;
    }
    @Basic
    @Column(name = "desc_19", nullable = true, length = 255)
    public String getDesc19() {
        return desc19;
    }

    public void setDesc19(String desc19) {
        this.desc19 = desc19;
    }
    @Basic
    @Column(name = "desc_20", nullable = true, length = 255)
    public String getDesc20() {
        return desc20;
    }

    public void setDesc20(String desc20) {
        this.desc20 = desc20;
    }
    @Basic
    @Column(name = "desc_21", nullable = true, length = 255)
    public String getDesc21() {
        return desc21;
    }

    public void setDesc21(String desc21) {
        this.desc21 = desc21;
    }
    @Basic
    @Column(name = "desc_22", nullable = true, length = 255)
    public String getDesc22() {
        return desc22;
    }

    public void setDesc22(String desc22) {
        this.desc22 = desc22;
    }
    @Basic
    @Column(name = "desc_23", nullable = true, length = 255)
    public String getDesc23() {
        return desc23;
    }

    public void setDesc23(String desc23) {
        this.desc23 = desc23;
    }
    @Basic
    @Column(name = "desc_24", nullable = true, length = 255)
    public String getDesc24() {
        return desc24;
    }

    public void setDesc24(String desc24) {
        this.desc24 = desc24;
    }
    @Basic
    @Column(name = "desc_25", nullable = true, length = 255)
    public String getDesc25() {
        return desc25;
    }

    public void setDesc25(String desc25) {
        this.desc25 = desc25;
    }
    @Basic
    @Column(name = "desc_26", nullable = true, length = 255)
    public String getDesc26() {
        return desc26;
    }

    public void setDesc26(String desc26) {
        this.desc26 = desc26;
    }
    @Basic
    @Column(name = "desc_27", nullable = true, length = 255)
    public String getDesc27() {
        return desc27;
    }

    public void setDesc27(String desc27) {
        this.desc27 = desc27;
    }
    @Basic
    @Column(name = "desc_28", nullable = true, length = 255)
    public String getDesc28() {
        return desc28;
    }

    public void setDesc28(String desc28) {
        this.desc28 = desc28;
    }
    @Basic
    @Column(name = "desc_29", nullable = true, length = 255)
    public String getDesc29() {
        return desc29;
    }

    public void setDesc29(String desc29) {
        this.desc29 = desc29;
    }
    @Basic
    @Column(name = "desc_30", nullable = true, length = 255)
    public String getDesc30() {
        return desc30;
    }

    public void setDesc30(String desc30) {
        this.desc30 = desc30;
    }
    @Basic
    @Column(name = "desc_31", nullable = true, length = 255)
    public String getDesc31() {
        return desc31;
    }

    public void setDesc31(String desc31) {
        this.desc31 = desc31;
    }
    @Basic
    @Column(name = "desc_32", nullable = true, length = 255)
    public String getDesc32() {
        return desc32;
    }

    public void setDesc32(String desc32) {
        this.desc32 = desc32;
    }
    @Basic
    @Column(name = "desc_33", nullable = true, length = 255)
    public String getDesc33() {
        return desc33;
    }

    public void setDesc33(String desc33) {
        this.desc33 = desc33;
    }
    @Basic
    @Column(name = "desc_34", nullable = true, length = 255)
    public String getDesc34() {
        return desc34;
    }

    public void setDesc34(String desc34) {
        this.desc34 = desc34;
    }
    @Basic
    @Column(name = "desc_35", nullable = true, length = 255)
    public String getDesc35() {
        return desc35;
    }

    public void setDesc35(String desc35) {
        this.desc35 = desc35;
    }
    @Basic
    @Column(name = "desc_36", nullable = true, length = 255)
    public String getDesc36() {
        return desc36;
    }

    public void setDesc36(String desc36) {
        this.desc36 = desc36;
    }
    @Basic
    @Column(name = "desc_37", nullable = true, length = 255)
    public String getDesc37() {
        return desc37;
    }

    public void setDesc37(String desc37) {
        this.desc37 = desc37;
    }
    @Basic
    @Column(name = "desc_38", nullable = true, length = 255)
    public String getDesc38() {
        return desc38;
    }

    public void setDesc38(String desc38) {
        this.desc38 = desc38;
    }
    @Basic
    @Column(name = "desc_39", nullable = true, length = 255)
    public String getDesc39() {
        return desc39;
    }

    public void setDesc39(String desc39) {
        this.desc39 = desc39;
    }
    @Basic
    @Column(name = "desc_40", nullable = true, length = 255)
    public String getDesc40() {
        return desc40;
    }

    public void setDesc40(String desc40) {
        this.desc40 = desc40;
    }
    @Basic
    @Column(name = "desc_41", nullable = true, length = 255)
    public String getDesc41() {
        return desc41;
    }

    public void setDesc41(String desc41) {
        this.desc41 = desc41;
    }
    @Basic
    @Column(name = "desc_42", nullable = true, length = 255)
    public String getDesc42() {
        return desc42;
    }

    public void setDesc42(String desc42) {
        this.desc42 = desc42;
    }
    @Basic
    @Column(name = "desc_43", nullable = true, length = 255)
    public String getDesc43() {
        return desc43;
    }

    public void setDesc43(String desc43) {
        this.desc43 = desc43;
    }
    @Basic
    @Column(name = "desc_44", nullable = true, length = 255)
    public String getDesc44() {
        return desc44;
    }

    public void setDesc44(String desc44) {
        this.desc44 = desc44;
    }
    @Basic
    @Column(name = "desc_45", nullable = true, length = 255)
    public String getDesc45() {
        return desc45;
    }

    public void setDesc45(String desc45) {
        this.desc45 = desc45;
    }
    @Basic
    @Column(name = "desc_46", nullable = true, length = 255)
    public String getDesc46() {
        return desc46;
    }

    public void setDesc46(String desc46) {
        this.desc46 = desc46;
    }
    @Basic
    @Column(name = "desc_47", nullable = true, length = 255)
    public String getDesc47() {
        return desc47;
    }

    public void setDesc47(String desc47) {
        this.desc47 = desc47;
    }
    @Basic
    @Column(name = "desc_48", nullable = true, length = 255)
    public String getDesc48() {
        return desc48;
    }

    public void setDesc48(String desc48) {
        this.desc48 = desc48;
    }
    @Basic
    @Column(name = "desc_49", nullable = true, length = 255)
    public String getDesc49() {
        return desc49;
    }

    public void setDesc49(String desc49) {
        this.desc49 = desc49;
    }
    @Basic
    @Column(name = "desc_50", nullable = true, length = 255)
    public String getDesc50() {
        return desc50;
    }

    public void setDesc50(String desc50) {
        this.desc50 = desc50;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Result50 result = (Result50) o;

        if (id != result.id) return false;
        if (testId != result.testId) return false;
        if (babyId != result.babyId) return false;
        if (hosId != result.hosId) return false;
        if (userId != result.userId) return false;
        if (Double.compare(result.a1, a1) != 0) return false;
        if (Double.compare(result.a2, a2) != 0) return false;
        if (Double.compare(result.a3, a3) != 0) return false;
        if (Double.compare(result.a4, a4) != 0) return false;

        if (Double.compare(result.a5, a5) != 0) return false;
        if (Double.compare(result.a6, a6) != 0) return false;
        if (time != null ? !time.equals(result.time) : result.time != null) return false;
        if (state != null ? !state.equals(result.state) : result.state != null) return false;
        if (score1 != null ? !score1.equals(result.score1) : result.score1 != null) return false;
        if (reason1 != null ? !reason1.equals(result.reason1) : result.reason1 != null) return false;
        if (score2 != null ? !score2.equals(result.score2) : result.score2 != null) return false;
        if (reason2 != null ? !reason2.equals(result.reason2) : result.reason2 != null) return false;
        if (score3 != null ? !score3.equals(result.score3) : result.score3 != null) return false;
        if (reason3 != null ? !reason3.equals(result.reason3) : result.reason3 != null) return false;
        if (score4 != null ? !score4.equals(result.score4) : result.score4 != null) return false;
        if (reason4 != null ? !reason4.equals(result.reason4) : result.reason4 != null) return false;
        if (score5 != null ? !score5.equals(result.score5) : result.score5 != null) return false;
        if (reason5 != null ? !reason5.equals(result.reason5) : result.reason5 != null) return false;
        if (score6 != null ? !score6.equals(result.score6) : result.score6 != null) return false;
        if (reason6 != null ? !reason6.equals(result.reason6) : result.reason6 != null) return false;
        if (score7 != null ? !score7.equals(result.score7) : result.score7 != null) return false;
        if (reason7 != null ? !reason7.equals(result.reason7) : result.reason7 != null) return false;
        if (score8 != null ? !score8.equals(result.score8) : result.score8 != null) return false;
        if (reason8 != null ? !reason8.equals(result.reason8) : result.reason8 != null) return false;
        if (score9 != null ? !score9.equals(result.score9) : result.score9 != null) return false;
        if (reason9 != null ? !reason9.equals(result.reason9) : result.reason9 != null) return false;
        if (score10 != null ? !score10.equals(result.score10) : result.score10 != null) return false;
        if (reason10 != null ? !reason10.equals(result.reason10) : result.reason10 != null) return false;
        if (score11 != null ? !score11.equals(result.score11) : result.score11 != null) return false;
        if (reason11 != null ? !reason11.equals(result.reason11) : result.reason11 != null) return false;
        if (score12 != null ? !score12.equals(result.score12) : result.score12 != null) return false;
        if (reason12 != null ? !reason12.equals(result.reason12) : result.reason12 != null) return false;
        if (score13 != null ? !score13.equals(result.score13) : result.score13 != null) return false;
        if (reason13 != null ? !reason13.equals(result.reason13) : result.reason13 != null) return false;
        if (score14 != null ? !score14.equals(result.score14) : result.score14 != null) return false;
        if (reason14 != null ? !reason14.equals(result.reason14) : result.reason14 != null) return false;
        if (score15 != null ? !score15.equals(result.score15) : result.score15 != null) return false;
        if (reason15 != null ? !reason15.equals(result.reason15) : result.reason15 != null) return false;
        if (score16 != null ? !score16.equals(result.score16) : result.score16 != null) return false;
        if (reason16 != null ? !reason16.equals(result.reason16) : result.reason16 != null) return false;
        if (score17 != null ? !score17.equals(result.score17) : result.score17 != null) return false;
        if (reason17 != null ? !reason17.equals(result.reason17) : result.reason17 != null) return false;
        if (score18 != null ? !score18.equals(result.score18) : result.score18 != null) return false;
        if (reason18 != null ? !reason18.equals(result.reason18) : result.reason18 != null) return false;
        if (score19 != null ? !score19.equals(result.score19) : result.score19 != null) return false;
        if (reason19 != null ? !reason19.equals(result.reason19) : result.reason19 != null) return false;
        if (score20 != null ? !score20.equals(result.score20) : result.score20 != null) return false;
        if (reason20 != null ? !reason20.equals(result.reason20) : result.reason20 != null) return false;
        if (score21 != null ? !score21.equals(result.score21) : result.score21 != null) return false;
        if (reason21 != null ? !reason21.equals(result.reason21) : result.reason21 != null) return false;
        if (score22 != null ? !score22.equals(result.score22) : result.score22 != null) return false;
        if (reason22 != null ? !reason22.equals(result.reason22) : result.reason22 != null) return false;
        if (score23 != null ? !score23.equals(result.score23) : result.score23 != null) return false;
        if (reason23 != null ? !reason23.equals(result.reason23) : result.reason23 != null) return false;
        if (score24 != null ? !score24.equals(result.score24) : result.score24 != null) return false;
        if (reason24 != null ? !reason24.equals(result.reason24) : result.reason24 != null) return false;
        if (score25 != null ? !score25.equals(result.score25) : result.score25 != null) return false;
        if (reason25 != null ? !reason25.equals(result.reason25) : result.reason25 != null) return false;
        if (score26 != null ? !score26.equals(result.score26) : result.score26 != null) return false;
        if (reason26 != null ? !reason26.equals(result.reason26) : result.reason26 != null) return false;
        if (score27 != null ? !score27.equals(result.score27) : result.score27 != null) return false;
        if (reason27 != null ? !reason27.equals(result.reason27) : result.reason27 != null) return false;
        if (score28 != null ? !score28.equals(result.score28) : result.score28 != null) return false;
        if (reason28 != null ? !reason28.equals(result.reason28) : result.reason28 != null) return false;
        if (score29 != null ? !score29.equals(result.score29) : result.score29 != null) return false;
        if (reason29 != null ? !reason29.equals(result.reason29) : result.reason29 != null) return false;
        if (score30 != null ? !score30.equals(result.score30) : result.score30 != null) return false;
        if (reason30 != null ? !reason30.equals(result.reason30) : result.reason30 != null) return false;
        if (score31 != null ? !score31.equals(result.score31) : result.score31 != null) return false;
        if (reason31 != null ? !reason31.equals(result.reason31) : result.reason31 != null) return false;
        if (score32 != null ? !score32.equals(result.score32) : result.score32 != null) return false;
        if (reason32 != null ? !reason32.equals(result.reason32) : result.reason32 != null) return false;
        if (score33 != null ? !score33.equals(result.score33) : result.score33 != null) return false;
        if (reason33 != null ? !reason33.equals(result.reason33) : result.reason33 != null) return false;
        if (score34 != null ? !score34.equals(result.score34) : result.score34 != null) return false;
        if (reason34 != null ? !reason34.equals(result.reason34) : result.reason34 != null) return false;
        if (score35 != null ? !score35.equals(result.score35) : result.score35 != null) return false;
        if (reason35 != null ? !reason35.equals(result.reason35) : result.reason35 != null) return false;
        if (score36 != null ? !score36.equals(result.score36) : result.score36 != null) return false;
        if (reason36 != null ? !reason36.equals(result.reason36) : result.reason36 != null) return false;
        if (score37 != null ? !score37.equals(result.score37) : result.score37 != null) return false;
        if (reason37 != null ? !reason37.equals(result.reason37) : result.reason37 != null) return false;
        if (score38 != null ? !score38.equals(result.score38) : result.score38 != null) return false;
        if (reason38 != null ? !reason38.equals(result.reason38) : result.reason38 != null) return false;
        if (score39 != null ? !score39.equals(result.score39) : result.score39 != null) return false;
        if (reason39 != null ? !reason39.equals(result.reason39) : result.reason39 != null) return false;
        if (score40 != null ? !score40.equals(result.score40) : result.score40 != null) return false;
        if (reason40 != null ? !reason40.equals(result.reason40) : result.reason40 != null) return false;
        if (score41 != null ? !score41.equals(result.score41) : result.score41 != null) return false;
        if (reason41 != null ? !reason41.equals(result.reason41) : result.reason41 != null) return false;
        if (score42 != null ? !score42.equals(result.score42) : result.score42 != null) return false;
        if (reason42 != null ? !reason42.equals(result.reason42) : result.reason42 != null) return false;
        if (score43 != null ? !score43.equals(result.score43) : result.score43 != null) return false;
        if (reason43 != null ? !reason43.equals(result.reason43) : result.reason43 != null) return false;
        if (score44 != null ? !score44.equals(result.score44) : result.score44 != null) return false;
        if (reason44 != null ? !reason44.equals(result.reason44) : result.reason44 != null) return false;
        if (score45 != null ? !score45.equals(result.score45) : result.score45 != null) return false;
        if (reason45 != null ? !reason45.equals(result.reason45) : result.reason45 != null) return false;
        if (score46 != null ? !score46.equals(result.score46) : result.score46 != null) return false;
        if (reason46 != null ? !reason46.equals(result.reason46) : result.reason46 != null) return false;
        if (score47 != null ? !score47.equals(result.score47) : result.score47 != null) return false;
        if (reason47 != null ? !reason47.equals(result.reason47) : result.reason47 != null) return false;
        if (score48 != null ? !score48.equals(result.score48) : result.score48 != null) return false;
        if (reason48 != null ? !reason48.equals(result.reason48) : result.reason48 != null) return false;
        if (score49 != null ? !score49.equals(result.score49) : result.score49 != null) return false;
        if (reason49 != null ? !reason49.equals(result.reason49) : result.reason49 != null) return false;
        if (score50 != null ? !score50.equals(result.score50) : result.score50 != null) return false;
        if (reason50 != null ? !reason50.equals(result.reason50) : result.reason50 != null) return false;


        return true;
    }



    @Override
    public int hashCode() {
        int result;
        long temp;
        result = id;
        result = 31 * result + testId;
        result = 31 * result + babyId;
        result = 31 * result + (time != null ? time.hashCode() : 0);
        result = 31 * result + hosId;
        result = 31 * result + userId;
        result = 31 * result + (state != null ? state.hashCode() : 0);
        temp = Double.doubleToLongBits(a1);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        temp = Double.doubleToLongBits(a2);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        temp = Double.doubleToLongBits(a3);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        temp = Double.doubleToLongBits(a4);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        temp = Double.doubleToLongBits(a5);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        temp = Double.doubleToLongBits(a6);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        result = 31 * result + (score1 != null ? score1.hashCode() : 0);
        result = 31 * result + (reason1 != null ? reason1.hashCode() : 0);
        result = 31 * result + (score2 != null ? score2.hashCode() : 0);
        result = 31 * result + (reason2 != null ? reason2.hashCode() : 0);
        result = 31 * result + (score3 != null ? score3.hashCode() : 0);
        result = 31 * result + (reason3 != null ? reason3.hashCode() : 0);
        result = 31 * result + (score4 != null ? score4.hashCode() : 0);
        result = 31 * result + (reason4 != null ? reason4.hashCode() : 0);
        result = 31 * result + (score5 != null ? score5.hashCode() : 0);
        result = 31 * result + (reason5 != null ? reason5.hashCode() : 0);
        result = 31 * result + (score6 != null ? score6.hashCode() : 0);
        result = 31 * result + (reason6 != null ? reason6.hashCode() : 0);
        result = 31 * result + (score7 != null ? score7.hashCode() : 0);
        result = 31 * result + (reason7 != null ? reason7.hashCode() : 0);
        result = 31 * result + (score8 != null ? score8.hashCode() : 0);
        result = 31 * result + (reason8 != null ? reason8.hashCode() : 0);
        result = 31 * result + (score9 != null ? score9.hashCode() : 0);
        result = 31 * result + (reason9 != null ? reason9.hashCode() : 0);
        result = 31 * result + (score10 != null ? score10.hashCode() : 0);
        result = 31 * result + (reason10 != null ? reason10.hashCode() : 0);
        result = 31 * result + (score11 != null ? score11.hashCode() : 0);
        result = 31 * result + (reason11 != null ? reason11.hashCode() : 0);
        result = 31 * result + (score12 != null ? score12.hashCode() : 0);
        result = 31 * result + (reason12 != null ? reason12.hashCode() : 0);
        result = 31 * result + (score13 != null ? score13.hashCode() : 0);
        result = 31 * result + (reason13 != null ? reason13.hashCode() : 0);
        result = 31 * result + (score14 != null ? score14.hashCode() : 0);
        result = 31 * result + (reason14 != null ? reason14.hashCode() : 0);
        result = 31 * result + (score15 != null ? score15.hashCode() : 0);
        result = 31 * result + (reason15 != null ? reason15.hashCode() : 0);
        result = 31 * result + (score16 != null ? score16.hashCode() : 0);
        result = 31 * result + (reason16 != null ? reason16.hashCode() : 0);
        result = 31 * result + (score17 != null ? score17.hashCode() : 0);
        result = 31 * result + (reason17 != null ? reason17.hashCode() : 0);
        result = 31 * result + (score18 != null ? score18.hashCode() : 0);
        result = 31 * result + (reason18 != null ? reason18.hashCode() : 0);
        result = 31 * result + (score19 != null ? score19.hashCode() : 0);
        result = 31 * result + (reason19 != null ? reason19.hashCode() : 0);
        result = 31 * result + (score20 != null ? score20.hashCode() : 0);
        result = 31 * result + (reason20 != null ? reason20.hashCode() : 0);
        result = 31 * result + (score21 != null ? score21.hashCode() : 0);
        result = 31 * result + (reason21 != null ? reason21.hashCode() : 0);
        result = 31 * result + (score22 != null ? score22.hashCode() : 0);
        result = 31 * result + (reason22 != null ? reason22.hashCode() : 0);
        result = 31 * result + (score23 != null ? score23.hashCode() : 0);
        result = 31 * result + (reason23 != null ? reason23.hashCode() : 0);
        result = 31 * result + (score24 != null ? score24.hashCode() : 0);
        result = 31 * result + (reason24 != null ? reason24.hashCode() : 0);
        result = 31 * result + (score25 != null ? score25.hashCode() : 0);
        result = 31 * result + (reason25 != null ? reason25.hashCode() : 0);
        result = 31 * result + (score26 != null ? score26.hashCode() : 0);
        result = 31 * result + (reason26 != null ? reason26.hashCode() : 0);
        result = 31 * result + (score27 != null ? score27.hashCode() : 0);
        result = 31 * result + (reason27 != null ? reason27.hashCode() : 0);
        result = 31 * result + (score28 != null ? score28.hashCode() : 0);
        result = 31 * result + (reason28 != null ? reason28.hashCode() : 0);
        result = 31 * result + (score29 != null ? score29.hashCode() : 0);
        result = 31 * result + (reason29 != null ? reason29.hashCode() : 0);
        result = 31 * result + (score30 != null ? score30.hashCode() : 0);
        result = 31 * result + (reason30 != null ? reason30.hashCode() : 0);
        result = 31 * result + (score31 != null ? score31.hashCode() : 0);
        result = 31 * result + (reason31 != null ? reason31.hashCode() : 0);
        result = 31 * result + (score32 != null ? score32.hashCode() : 0);
        result = 31 * result + (reason32 != null ? reason32.hashCode() : 0);
        result = 31 * result + (score33 != null ? score33.hashCode() : 0);
        result = 31 * result + (reason33 != null ? reason33.hashCode() : 0);
        result = 31 * result + (score34 != null ? score34.hashCode() : 0);
        result = 31 * result + (reason34 != null ? reason34.hashCode() : 0);
        result = 31 * result + (score35 != null ? score35.hashCode() : 0);
        result = 31 * result + (reason35 != null ? reason35.hashCode() : 0);
        result = 31 * result + (score36 != null ? score36.hashCode() : 0);
        result = 31 * result + (reason36 != null ? reason36.hashCode() : 0);
        result = 31 * result + (score37 != null ? score37.hashCode() : 0);
        result = 31 * result + (reason37 != null ? reason37.hashCode() : 0);
        result = 31 * result + (score38 != null ? score38.hashCode() : 0);
        result = 31 * result + (reason38 != null ? reason38.hashCode() : 0);
        result = 31 * result + (score39 != null ? score39.hashCode() : 0);
        result = 31 * result + (reason39 != null ? reason39.hashCode() : 0);
        result = 31 * result + (score40 != null ? score40.hashCode() : 0);
        result = 31 * result + (reason40 != null ? reason40.hashCode() : 0);
        result = 31 * result + (score41 != null ? score41.hashCode() : 0);
        result = 31 * result + (reason41 != null ? reason41.hashCode() : 0);
        result = 31 * result + (score42 != null ? score42.hashCode() : 0);
        result = 31 * result + (reason42 != null ? reason42.hashCode() : 0);
        result = 31 * result + (score43 != null ? score43.hashCode() : 0);
        result = 31 * result + (reason43 != null ? reason43.hashCode() : 0);
        result = 31 * result + (score44 != null ? score44.hashCode() : 0);
        result = 31 * result + (reason44 != null ? reason44.hashCode() : 0);
        result = 31 * result + (score45 != null ? score45.hashCode() : 0);
        result = 31 * result + (reason45 != null ? reason45.hashCode() : 0);
        result = 31 * result + (score46 != null ? score46.hashCode() : 0);
        result = 31 * result + (reason46 != null ? reason46.hashCode() : 0);
        result = 31 * result + (score47 != null ? score47.hashCode() : 0);
        result = 31 * result + (reason47 != null ? reason47.hashCode() : 0);
        result = 31 * result + (score48 != null ? score48.hashCode() : 0);
        result = 31 * result + (reason48 != null ? reason48.hashCode() : 0);
        result = 31 * result + (score49 != null ? score49.hashCode() : 0);
        result = 31 * result + (reason49 != null ? reason49.hashCode() : 0);
        result = 31 * result + (score50 != null ? score50.hashCode() : 0);
        result = 31 * result + (reason50 != null ? reason50.hashCode() : 0);
        return result;
    }

    private Baby baby;

    @Transient
    public Baby getBaby() {
        return baby;
    }
    public void setBaby(Baby baby) {
        this.baby = baby;
    }
}
