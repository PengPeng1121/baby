package com.free4lab.babycheckup.constant;

/**
 * Created by asus on 2017/12/2  学龄前4-7岁儿童智力检测 6.5
 */
public enum Year6HalfEnum {
    SCORE_1(1,2),
    SCORE_2(2,2),
    SCORE_3(3,2),
    SCORE_4(4,2),
    SCORE_5(5,2),
    SCORE_6(6,2),
    SCORE_7(7,3),
    SCORE_8(8,3),
    SCORE_9(9,3),
    SCORE_10(10,3),
    SCORE_11(11,3),
    SCORE_12(12,3),
    SCORE_13(13,8),
    SCORE_14(14,8),
    SCORE_15(15,8),
    SCORE_16(16,10),
    SCORE_17(17,13),
    SCORE_18(18,17),
    SCORE_19(19,20),
    SCORE_20(20,23),
    SCORE_21(21,37),//
    SCORE_22(22,32),//
    SCORE_23(23,35),//
    SCORE_24(24,37),//
    SCORE_25(25,32),//
    SCORE_26(26,35),//
    SCORE_27(27,37),//
    SCORE_28(28,32),//
    SCORE_29(29,53),
    SCORE_30(30,57),
    SCORE_31(31,60),
    SCORE_32(32,35),//
    SCORE_33(33,67),
    SCORE_34(34,70),
    SCORE_35(35,73),
    SCORE_36(36,77),
    SCORE_37(37,80),
    SCORE_38(38,83),
    SCORE_39(39,87),
    SCORE_40(40,90),
    SCORE_41(41,94),
    SCORE_42(42,97),
    SCORE_43(43,100),
    SCORE_44(44,104),
    SCORE_45(45,107),
    SCORE_46(46,110),
    SCORE_47(47,114),
    SCORE_48(48,117),
    SCORE_49(49,120),
    SCORE_50(50,124);

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

    Year6HalfEnum(Integer name, Integer index){
        this.name = name;
        this.index = index;
    }

    //根据索引获取名称
    public static Integer getName(Integer index) {
        Integer name = 0;
        for (Year6HalfEnum o : Year6HalfEnum.values()) {
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
        for (Year6HalfEnum o : Year6HalfEnum.values()) {
            if (name == o.getName()) {
                index = o.getIndex();
                break;
            }
        }
        return index;
    }
}
