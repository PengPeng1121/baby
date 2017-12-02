package com.free4lab.babycheckup.constant;

/**
 * Created by asus on 2017/12/2  学龄前4-7岁儿童智力检测 5.5
 */
public enum Year6Enum {
    SCORE_1(1,2),
    SCORE_2(2,2),
    SCORE_3(3,3),
    SCORE_4(4,3),
    SCORE_5(5,3),
    SCORE_6(6,3),
    SCORE_7(7,5),
    SCORE_8(8,8),
    SCORE_9(9,8),
    SCORE_10(10,8),
    SCORE_11(11,8),
    SCORE_12(12,8),
    SCORE_13(13,12),
    SCORE_14(14,15),
    SCORE_15(15,18),
    SCORE_16(16,21),
    SCORE_17(17,24),
    SCORE_18(18,27),
    SCORE_19(19,30),
    SCORE_20(20,33),
    SCORE_21(21,37),//
    SCORE_22(22,32),//
    SCORE_23(23,35),//
    SCORE_24(24,37),//
    SCORE_25(25,32),//
    SCORE_26(26,35),//
    SCORE_27(27,37),//
    SCORE_28(28,32),//
    SCORE_29(29,61),
    SCORE_30(30,65),
    SCORE_31(31,67),
    SCORE_32(32,35),//
    SCORE_33(33,73),
    SCORE_34(34,76),
    SCORE_35(35,80),
    SCORE_36(36,83),
    SCORE_37(37,86),
    SCORE_38(38,89),
    SCORE_39(39,92),
    SCORE_40(40,95),
    SCORE_41(41,98),
    SCORE_42(42,101),
    SCORE_43(43,104),
    SCORE_44(44,107),
    SCORE_45(45,110),
    SCORE_46(46,113),
    SCORE_47(47,116),
    SCORE_48(48,120),
    SCORE_49(49,123),
    SCORE_50(50,126);

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

    Year6Enum(Integer name, Integer index){
        this.name = name;
        this.index = index;
    }

    //根据索引获取名称
    public static Integer getName(Integer index) {
        Integer name = 0;
        for (Year6Enum o : Year6Enum.values()) {
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
        for (Year6Enum o : Year6Enum.values()) {
            if (name == o.getName()) {
                index = o.getIndex();
                break;
            }
        }
        return index;
    }
}
