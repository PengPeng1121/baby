package com.free4lab.babycheckup.constant;

/**
 * Created by asus on 2017/12/2  学龄前4-7岁儿童智力检测 7
 */
public enum Year7Enum {
    SCORE_1(1,1),
    SCORE_2(2,2),
    SCORE_3(3,2),
    SCORE_4(4,2),
    SCORE_5(5,2),
    SCORE_6(6,2),
    SCORE_7(7,2),
    SCORE_8(8,2),
    SCORE_9(9,2),
    SCORE_10(10,2),
    SCORE_11(11,2),
    SCORE_12(12,2),
    SCORE_13(13,3),
    SCORE_14(14,3),
    SCORE_15(15,6),
    SCORE_16(16,8),
    SCORE_17(17,8),
    SCORE_18(18,8),
    SCORE_19(19,17),
    SCORE_20(20,21),
    SCORE_21(21,37),//
    SCORE_22(22,32),//
    SCORE_23(23,35),//
    SCORE_24(24,37),//
    SCORE_25(25,32),//
    SCORE_26(26,35),//
    SCORE_27(27,37),//
    SCORE_28(28,32),//
    SCORE_29(29,51),
    SCORE_30(30,55),
    SCORE_31(31,58),
    SCORE_32(32,35),//
    SCORE_33(33,62),
    SCORE_34(34,69),
    SCORE_35(35,72),
    SCORE_36(36,75),
    SCORE_37(37,79),
    SCORE_38(38,82),
    SCORE_39(39,86),
    SCORE_40(40,89),
    SCORE_41(41,92),
    SCORE_42(42,96),
    SCORE_43(43,99),
    SCORE_44(44,103),
    SCORE_45(45,106),
    SCORE_46(46,109),
    SCORE_47(47,113),
    SCORE_48(48,116),
    SCORE_49(49,120),
    SCORE_50(50,123);

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

    Year7Enum(Integer name, Integer index){
        this.name = name;
        this.index = index;
    }

    //根据索引获取名称
    public static Integer getName(Integer index) {
        Integer name = 0;
        for (Year7Enum o : Year7Enum.values()) {
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
        for (Year7Enum o : Year7Enum.values()) {
            if (name == o.getName()) {
                index = o.getIndex();
                break;
            }
        }
        return index;
    }
}
