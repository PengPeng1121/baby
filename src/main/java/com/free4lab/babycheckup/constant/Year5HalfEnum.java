package com.free4lab.babycheckup.constant;

/**
 * Created by asus on 2017/12/2  学龄前4-7岁儿童智力检测 5.5
 */
public enum Year5HalfEnum {
    SCORE_1(1,3),
    SCORE_2(2,3),
    SCORE_3(3,5),
    SCORE_4(4,8),
    SCORE_5(5,8),
    SCORE_6(6,8),
    SCORE_7(7,8),
    SCORE_8(8,8),
    SCORE_9(9,11),
    SCORE_10(10,14),
    SCORE_11(11,22),
    SCORE_12(12,25),
    SCORE_13(13,28),
    SCORE_14(14,30),
    SCORE_15(15,33),
    SCORE_16(16,36),
    SCORE_17(17,39),
    SCORE_18(18,42),
    SCORE_19(19,44),
    SCORE_20(20,47),
    SCORE_21(21,37),//
    SCORE_22(22,32),//
    SCORE_23(23,35),//
    SCORE_24(24,37),//
    SCORE_25(25,32),//
    SCORE_26(26,35),//
    SCORE_27(27,37),//
    SCORE_28(28,32),//
    SCORE_29(29,72),
    SCORE_30(30,75),
    SCORE_31(31,78),
    SCORE_32(32,35),//
    SCORE_33(33,83),
    SCORE_34(34,86),
    SCORE_35(35,89),
    SCORE_36(36,92),
    SCORE_37(37,95),
    SCORE_38(38,97),
    SCORE_39(39,100),
    SCORE_40(40,103),
    SCORE_41(41,106),
    SCORE_42(42,108),
    SCORE_43(43,111),
    SCORE_44(44,114),
    SCORE_45(45,117),
    SCORE_46(46,120),
    SCORE_47(47,122),
    SCORE_48(48,125),
    SCORE_49(49,128),
    SCORE_50(50,131);

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

    Year5HalfEnum(Integer name, Integer index){
        this.name = name;
        this.index = index;
    }

    //根据索引获取名称
    public static Integer getName(Integer index) {
        Integer name = 0;
        for (Year5HalfEnum o : Year5HalfEnum.values()) {
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
        for (Year5HalfEnum o : Year5HalfEnum.values()) {
            if (name == o.getName()) {
                index = o.getIndex();
                break;
            }
        }
        return index;
    }
}
