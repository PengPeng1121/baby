package com.free4lab.babycheckup.model;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by Administrator on 2017/7/12.
 */

@Entity
@Table(name = "result_nei", schema = "babycheckup")
public class ResultNei {
    private int id;
    private int testId;
    private int babyId;
    private Timestamp time;
    private int hosId;
    private int userId;
    private String state;
    private String answerRelation;//答题者与儿童关系
    private int totalScore;
    private int IQ;

    private Byte score1;
    private Byte score2;
    private Byte score3;
    private Byte score4;
    private Byte score5;
    private Byte score6;
    private Byte score7;
    private Byte score8;
    private Byte score9;
    private Byte score10;
    private Byte score11;
    private Byte score12;
    private Byte score13;
    private Byte score14;
    private Byte score15;
    private Byte score16;
    private Byte score17;
    private Byte score18;
    private Byte score19;
    private Byte score20;
    private Byte score21;
    private Byte score22;
    private Byte score23;
    private Byte score24;
    private Byte score25;
    private Byte score26;
    private Byte score27;
    private Byte score28;
    private Byte score29;
    private Byte score30;
    private Byte score31;
    private Byte score32;
    private Byte score33;
    private Byte score34;
    private Byte score35;
    private Byte score36;
    private Byte score37;
    private Byte score38;
    private Byte score39;
    private Byte score40;
    private Byte score41;
    private Byte score42;
    private Byte score43;
    private Byte score44;
    private Byte score45;
    private Byte score46;
    private Byte score47;
    private Byte score48;
    private Byte score49;
    private Byte score50;
    private Byte score51;

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
    @Column(name = "total_score", nullable = true)
    public int getTotalScore() {
        return totalScore;
    }

    public void setTotalScore(int totalScore) {
        this.totalScore = totalScore;
    }

    @Basic
    @Column(name = "IQ", nullable = true)
    public int getIQ() {
        return IQ;
    }

    public void setIQ(int IQ) {
        this.IQ = IQ;
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
    @Column(name = "score_2", nullable = true)
    public Byte getScore2() {
        return score2;
    }

    public void setScore2(Byte score2) {
        this.score2 = score2;
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
    @Column(name = "score_4", nullable = true)
    public Byte getScore4() {
        return score4;
    }

    public void setScore4(Byte score4) {
        this.score4 = score4;
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
    @Column(name = "score_6", nullable = true)
    public Byte getScore6() {
        return score6;
    }

    public void setScore6(Byte score6) {
        this.score6 = score6;
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
    @Column(name = "score_8", nullable = true)
    public Byte getScore8() {
        return score8;
    }

    public void setScore8(Byte score8) {
        this.score8 = score8;
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
    @Column(name = "score_10", nullable = true)
    public Byte getScore10() {
        return score10;
    }

    public void setScore10(Byte score10) {
        this.score10 = score10;
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
    @Column(name = "score_12", nullable = true)
    public Byte getScore12() {
        return score12;
    }

    public void setScore12(Byte score12) {
        this.score12 = score12;
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
    @Column(name = "score_14", nullable = true)
    public Byte getScore14() {
        return score14;
    }

    public void setScore14(Byte score14) {
        this.score14 = score14;
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
    @Column(name = "score_16", nullable = true)
    public Byte getScore16() {
        return score16;
    }

    public void setScore16(Byte score16) {
        this.score16 = score16;
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
    @Column(name = "score_18", nullable = true)
    public Byte getScore18() {
        return score18;
    }

    public void setScore18(Byte score18) {
        this.score18 = score18;
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
    @Column(name = "score_20", nullable = true)
    public Byte getScore20() {
        return score20;
    }

    public void setScore20(Byte score20) {
        this.score20 = score20;
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
    @Column(name = "score_22", nullable = true)
    public Byte getScore22() {
        return score22;
    }

    public void setScore22(Byte score22) {
        this.score22 = score22;
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
    @Column(name = "score_24", nullable = true)
    public Byte getScore24() {
        return score24;
    }

    public void setScore24(Byte score24) {
        this.score24 = score24;
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
    @Column(name = "score_26", nullable = true)
    public Byte getScore26() {
        return score26;
    }

    public void setScore26(Byte score26) {
        this.score26 = score26;
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
    @Column(name = "score_28", nullable = true)
    public Byte getScore28() {
        return score28;
    }

    public void setScore28(Byte score28) {
        this.score28 = score28;
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
    @Column(name = "score_30", nullable = true)
    public Byte getScore30() {
        return score30;
    }

    public void setScore30(Byte score30) {
        this.score30 = score30;
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
    @Column(name = "score_32", nullable = true)
    public Byte getScore32() {
        return score32;
    }

    public void setScore32(Byte score32) {
        this.score32 = score32;
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
    @Column(name = "score_34", nullable = true)
    public Byte getScore34() {
        return score34;
    }

    public void setScore34(Byte score34) {
        this.score34 = score34;
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
    @Column(name = "score_36", nullable = true)
    public Byte getScore36() {
        return score36;
    }

    public void setScore36(Byte score36) {
        this.score36 = score36;
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
    @Column(name = "score_38", nullable = true)
    public Byte getScore38() {
        return score38;
    }

    public void setScore38(Byte score38) {
        this.score38 = score38;
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
    @Column(name = "score_40", nullable = true)
    public Byte getScore40() {
        return score40;
    }

    public void setScore40(Byte score40) {
        this.score40 = score40;
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
    @Column(name = "score_42", nullable = true)
    public Byte getScore42() {
        return score42;
    }

    public void setScore42(Byte score42) {
        this.score42 = score42;
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
    @Column(name = "score_44", nullable = true)
    public Byte getScore44() {
        return score44;
    }

    public void setScore44(Byte score44) {
        this.score44 = score44;
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
    @Column(name = "answer_relation", nullable = true)
    public String getAnswerRelation() {
        return answerRelation;
    }

    public void setAnswerRelation(String answerRelation) {
        this.answerRelation = answerRelation;
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
    @Column(name = "score_47", nullable = true)
    public Byte getScore47() {
        return score47;
    }

    public void setScore47(Byte score47) {
        this.score47 = score47;
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
    @Column(name = "score_49", nullable = true)
    public Byte getScore49() {
        return score49;
    }

    public void setScore49(Byte score49) {
        this.score49 = score49;
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
    @Column(name = "score_51", nullable = true)
    public Byte getScore51() {
        return score51;
    }

    public void setScore51(Byte score51) {
        this.score51 = score51;
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
}
