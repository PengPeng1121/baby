package com.free4lab.babycheckup.constant;

/**
 * Created by asus on 2017/12/2  学龄前4-7岁儿童智力检测  4岁
 */
public enum Year4Enum {
    SCORE_1(1,32),
    SCORE_2(2,35),
    SCORE_3(3,37),
    SCORE_4(4,40),
    SCORE_5(5,42),
    SCORE_6(6,45),
    SCORE_7(7,51),
    SCORE_8(8,54),
    SCORE_9(9,56),
    SCORE_10(10,58),
    SCORE_11(11,60),
    SCORE_12(12,63),
    SCORE_13(13,65),
    SCORE_14(14,67),
    SCORE_15(15,69),
    SCORE_16(16,72),
    SCORE_17(17,74),
    SCORE_18(18,76),
    SCORE_19(19,78),
    SCORE_20(20,81),
    SCORE_21(21,37),//
    SCORE_22(22,32),//
    SCORE_23(23,35),//
    SCORE_24(24,37),//
    SCORE_25(25,32),//
    SCORE_26(26,35),//
    SCORE_27(27,37),//
    SCORE_28(28,32),//
    SCORE_29(29,101),
    SCORE_30(30,103),
    SCORE_31(31,105),
    SCORE_32(32,35),//
    SCORE_33(33,110),
    SCORE_34(34,112),
    SCORE_35(35,114),
    SCORE_36(36,117),
    SCORE_37(37,119),
    SCORE_38(38,121),
    SCORE_39(39,123),
    SCORE_40(40,126),
    SCORE_41(41,128),
    SCORE_42(42,130),
    SCORE_43(43,132),
    SCORE_44(44,135),
    SCORE_45(45,137),
    SCORE_46(46,139),
    SCORE_47(47,141),
    SCORE_48(48,144),
    SCORE_49(49,146),
    SCORE_50(50,148);

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

    Year4Enum(Integer name, Integer index){
        this.name = name;
        this.index = index;
    }

    //根据索引获取名称
    public static Integer getName(Integer index) {
        Integer name = 0;
        for (Year4Enum o : Year4Enum.values()) {
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
        for (Year4Enum o : Year4Enum.values()) {
            if (name == o.getName()) {
                index = o.getIndex();
                break;
            }
        }
        return index;
    }
}
