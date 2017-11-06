package com.free4lab.babycheckup.constant;

/**
 * Created by asus on 2017/6/20.
 */
public enum AnswerValueEnum_R {
    SCORE_A("需较多改进","0~50"),

    SCORE_B("需改进","50~70"),

    SCORE_C("好","75~90"),

    SCORE_D("很好","90~100");

    private String name;

    private String index;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIndex() {
        return index;
    }

    public void setIndex(String index) {
        this.index = index;
    }

    AnswerValueEnum_R(String name, String index){
        this.name = name;
        this.index = index;
    }

    //根据索引获取名称
    public static String getName(String index) {
        String name = "";
        for (AnswerValueEnum_R o : AnswerValueEnum_R.values()) {
            if (index .equals( o.getIndex())) {
                name = o.getName();
                break;
            }
        }
        return name;
    }

    //根据索引获取名称
    public static String getIndex(String name) {
        String index = "";
        for (AnswerValueEnum_R o : AnswerValueEnum_R.values()) {
            if (name == o.getName()) {
                index = o.getIndex();
                break;
            }
        }
        return index;
    }
}
