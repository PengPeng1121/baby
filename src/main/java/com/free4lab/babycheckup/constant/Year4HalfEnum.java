package com.free4lab.babycheckup.constant;

/**
 * Created by asus on 2017/12/2  学龄前4-7岁儿童智力检测 4.5
 */
public enum Year4HalfEnum {
    SCORE_1(1,16),
    SCORE_2(2,18),
    SCORE_3(3,21),
    SCORE_4(4,23),
    SCORE_5(5,26),
    SCORE_6(6,29),
    SCORE_7(7,31),
    SCORE_8(8,34),
    SCORE_9(9,47),
    SCORE_10(10,49),
    SCORE_11(11,52),
    SCORE_12(12,54),
    SCORE_13(13,56),
    SCORE_14(14,59),
    SCORE_15(15,61),
    SCORE_16(16,63),
    SCORE_17(17,65),
    SCORE_18(18,68),
    SCORE_19(19,70),
    SCORE_20(20,72),
    SCORE_21(21,74),
    SCORE_22(22,77),
    SCORE_23(23,79),
    SCORE_24(24,81),
    SCORE_25(25,83),
    SCORE_26(26,86),
    SCORE_27(27,88),
    SCORE_28(28,90),
    SCORE_29(29,93),
    SCORE_30(30,95),
    SCORE_31(31,97),
    SCORE_32(32,99),
    SCORE_33(33,102),
    SCORE_34(34,104),
    SCORE_35(35,106),
    SCORE_36(36,109),
    SCORE_37(37,111),
    SCORE_38(38,113),
    SCORE_39(39,115),
    SCORE_40(40,118),
    SCORE_41(41,120),
    SCORE_42(42,122),
    SCORE_43(43,124),
    SCORE_44(44,127),
    SCORE_45(45,129),
    SCORE_46(46,131),
    SCORE_47(47,134),
    SCORE_48(48,136),
    SCORE_49(49,138),
    SCORE_50(50,140);

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

    Year4HalfEnum(Integer name, Integer index){
        this.name = name;
        this.index = index;
    }

    //根据索引获取名称
    public static Integer getName(Integer index) {
        Integer name = 0;
        for (Year4HalfEnum o : Year4HalfEnum.values()) {
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
        for (Year4HalfEnum o : Year4HalfEnum.values()) {
            if (name == o.getName()) {
                index = o.getIndex();
                break;
            }
        }
        return index;
    }
}
