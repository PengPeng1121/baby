package com.free4lab.babycheckup.constant;

/**
 * Created by asus on 2017/12/2  学龄前4-7岁儿童智力检测 5
 */
public enum Year5Enum {
    SCORE_1(1,8),
    SCORE_2(2,8),
    SCORE_3(3,8),
    SCORE_4(4,8),
    SCORE_5(5,11),
    SCORE_6(6,14),
    SCORE_7(7,16),
    SCORE_8(8,19),
    SCORE_9(9,22),
    SCORE_10(10,34),
    SCORE_11(11,37),
    SCORE_12(12,39),
    SCORE_13(13,42),
    SCORE_14(14,44),
    SCORE_15(15,47),
    SCORE_16(16,50),
    SCORE_17(17,52),
    SCORE_18(18,55),
    SCORE_19(19,57),
    SCORE_20(20,60),
    SCORE_21(21,62),
    SCORE_22(22,65),
    SCORE_23(23,67),
    SCORE_24(24,70),
    SCORE_25(25,72),
    SCORE_26(26,75),
    SCORE_27(27,77),
    SCORE_28(28,80),
    SCORE_29(29,82),
    SCORE_30(30,85),
    SCORE_31(31,87),
    SCORE_32(32,90),
    SCORE_33(33,92),
    SCORE_34(34,95),
    SCORE_35(35,97),
    SCORE_36(36,100),
    SCORE_37(37,102),
    SCORE_38(38,105),
    SCORE_39(39,107),
    SCORE_40(40,110),
    SCORE_41(41,112),
    SCORE_42(42,115),
    SCORE_43(43,118),
    SCORE_44(44,120),
    SCORE_45(45,123),
    SCORE_46(46,125),
    SCORE_47(47,128),
    SCORE_48(48,130),
    SCORE_49(49,133),
    SCORE_50(50,135);

    private Integer name;

    private Integer index;

    public Integer getName() {
        return name;
    }

    public void setName(Integer name) {
        this.name = name;
    }

    public Integer getIndex() {
        return index;
    }

    public void setIndex(Integer index) {
        this.index = index;
    }

    Year5Enum(Integer name, Integer index){
        this.name = name;
        this.index = index;
    }

    //根据索引获取名称
    public static Integer getName(Integer index) {
        Integer name = 0;
        for (Year5Enum o : Year5Enum.values()) {
            if (index .equals( o.getIndex())) {
                name = o.getName();
                break;
            }
        }
        return name;
    }

    //根据索引获取名称
    public static Integer getIndex(Integer name) {
        Integer index = 0;
        for (Year5Enum o : Year5Enum.values()) {
            if (name == o.getName()) {
                index = o.getIndex();
                break;
            }
        }
        return index;
    }
}
