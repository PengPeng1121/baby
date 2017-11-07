package com.free4lab.babycheckup.constant;

/**
 * Created by asus on 2017/6/20.
 */
public enum AnswerValueEnum_Total {
    SCORE_38(38,"0~50"),

    SCORE_39(39,"0~50"),

    SCORE_40(40,"0~50"),

    SCORE_41(41,"0~50"),

    SCORE_42(42,"0~50"),

    SCORE_43(43,"0~50"),

    SCORE_44(4,"0~50"),

    SCORE_45(45,"0~50"),

    SCORE_46(46,"0~50"),

    SCORE_47(47,"0~50"),

    SCORE_48(48,"0~50"),

    SCORE_49(49,"0~50"),

    SCORE_50(50,"0~50"),

    SCORE_51(51,"0~50"),

    SCORE_52(52,"0~50"),

    SCORE_53(53,"0~50"),

    SCORE_54(54,"0~50"),

    SCORE_55(55,"0~50"),

    SCORE_56(56,"0~50"),

    SCORE_57(57,"0~50"),

    SCORE_58(58,"0~50"),

    SCORE_59(59,"0~50"),

    SCORE_60(60,"0~50"),

    SCORE_61(61,"0~50"),

    SCORE_62(62,"0~50"),

    SCORE_63(63,"0~50"),

    SCORE_64(64,"0~50"),

    SCORE_65(65,"0~50"),

    SCORE_66(66,"0~50"),

    SCORE_67(67,"0~50"),

    SCORE_68(68,"0~50"),

    SCORE_69(69,"0~50"),

    SCORE_70(70,"0~50"),

    SCORE_71(71,"0~50"),

    SCORE_72(72,"0~50"),

    SCORE_73(73,"0~50"),

    SCORE_74(74,"0~50"),

    SCORE_75(75,"0~50"),

    SCORE_76(76,"50~75"),

    SCORE_77(77,"50~75"),

    SCORE_78(78,"50~75"),

    SCORE_79(79,"50~75"),

    SCORE_80(80,"50~75"),

    SCORE_81(81,"50~75"),

    SCORE_82(82,"50~75"),

    SCORE_83(83,"75~90"),

    SCORE_84(84,"75~90"),

    SCORE_85(85,"75~90"),

    SCORE_86(86,"75~90"),

    SCORE_87(87,"75~90"),

    SCORE_88(88,"75~90"),

    SCORE_89(77,"75~90"),

    SCORE_90(90,"90~100"),

    SCORE_91(91,"90~100"),

    SCORE_92(92,"90~100"),

    SCORE_93(93,"90~100"),

    SCORE_94(94,"90~100"),

    SCORE_95(95,"90~100"),

    SCORE_96(96,"90~100"),

    SCORE_97(97,"90~100"),

    SCORE_98(98,"90~100"),

    SCORE_99(99,"90~100"),

    SCORE_100(100,"90~100");

    private Integer name;

    private String index;

    public Integer getName() {
        return name;
    }

    public void setName(Integer name) {
        this.name = name;
    }

    public String getIndex() {
        return index;
    }

    public void setIndex(String index) {
        this.index = index;
    }

    AnswerValueEnum_Total(Integer name, String index){
        this.name = name;
        this.index = index;
    }

    //根据索引获取名称
    public static Integer getName(String index) {
        Integer name = 0;
        for (AnswerValueEnum_Total o : AnswerValueEnum_Total.values()) {
            if (index .equals( o.getIndex())) {
                name = o.getName();
                break;
            }
        }
        return name;
    }

    //根据索引获取名称
    public static String getIndex(Integer name) {
        String index = "0~50";
        for (AnswerValueEnum_Total o : AnswerValueEnum_Total.values()) {
            if (name == o.getName()) {
                index = o.getIndex();
                break;
            }
        }
        return index;
    }
}
