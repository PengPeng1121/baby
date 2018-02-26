package com.free4lab.babycheckup.model;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by Administrator on 2017/7/12.
 */

@Entity
@Table(name = "result0_3", schema = "babycheckup")
public class Result0_3 {
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
    private int a7;
    private int a8;
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

    private String p1;
    private String p2;
    private String p3;
    private String p4;
    private String p5;
    private String p6;
    private String p7;
    private String p8;


    private String r1;
    private String r2;
    private String r3;
    private String r4;
    private String r5;
    private String r6;
    private String r7;
    private String r8;

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
    @Column(name = "a7", nullable = false)
    public int getA7() {
        return a7;
    }

    public void setA7(int a7) {
        this.a7 = a7;
    }

    @Basic
    @Column(name = "a8", nullable = false)
    public int getA8() {
        return a8;
    }

    public void setA8(int a8) {
        this.a8 = a8;
    }

    @Basic
    @Column(name = "p1", nullable = true, length = 20)
    public String getP1() {
        return p1;
    }

    public void setP1(String p1) {
        this.p1 = p1;
    }

    @Basic
    @Column(name = "p2", nullable = true, length = 20)
    public String getP2() {
        return p2;
    }

    public void setP2(String p2) {
        this.p2 = p2;
    }

    @Basic
    @Column(name = "p3", nullable = true, length = 20)
    public String getP3() {
        return p3;
    }

    public void setP3(String p3) {
        this.p3 = p3;
    }

    @Basic
    @Column(name = "p4", nullable = true, length = 20)
    public String getP4() {
        return p4;
    }

    public void setP4(String p4) {
        this.p4 = p4;
    }

    @Basic
    @Column(name = "p5", nullable = true, length = 20)
    public String getP5() {
        return p5;
    }

    public void setP5(String p5) {
        this.p5 = p5;
    }

    @Basic
    @Column(name = "p6", nullable = true, length = 20)
    public String getP6() {
        return p6;
    }

    public void setP6(String p6) {
        this.p6 = p6;
    }

    @Basic
    @Column(name = "p7", nullable = true, length = 20)
    public String getP7() {
        return p7;
    }

    public void setP7(String p7) {
        this.p7 = p7;
    }

    @Basic
    @Column(name = "p8", nullable = true, length = 20)
    public String getP8() {
        return p8;
    }

    public void setP8(String p8) {
        this.p8 = p8;
    }

    @Basic
    @Column(name = "r1", nullable = true, length = 20)
    public String getR1() {
        return r1;
    }

    public void setR1(String r1) {
        this.r1 = r1;
    }

    @Basic
    @Column(name = "r2", nullable = true, length = 20)
    public String getR2() {
        return r2;
    }

    public void setR2(String r2) {
        this.r2 = r2;
    }

    @Basic
    @Column(name = "r3", nullable = true, length = 20)
    public String getR3() {
        return r3;
    }

    public void setR3(String r3) {
        this.r3 = r3;
    }

    @Basic
    @Column(name = "r4", nullable = true, length = 20)
    public String getR4() {
        return r4;
    }

    public void setR4(String r4) {
        this.r4 = r4;
    }

    @Basic
    @Column(name = "r5", nullable = true, length = 20)
    public String getR5() {
        return r5;
    }

    public void setR5(String r5) {
        this.r5 = r5;
    }

    @Basic
    @Column(name = "r6", nullable = true, length = 20)
    public String getR6() {
        return r6;
    }

    public void setR6(String r6) {
        this.r6 = r6;
    }

    @Basic
    @Column(name = "r7", nullable = true, length = 20)
    public String getR7() {
        return r7;
    }

    public void setR7(String r7) {
        this.r7 = r7;
    }

    @Basic
    @Column(name = "r8", nullable = true, length = 20)
    public String getR8() {
        return r8;
    }

    public void setR8(String r8) {
        this.r8 = r8;
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

    private Baby baby;

    @Transient
    public Baby getBaby() {
        return baby;
    }
    public void setBaby(Baby baby) {
        this.baby = baby;
    }
}
