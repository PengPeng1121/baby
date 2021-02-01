package com.free4lab.babycheckup.constant;

/**
 * 公共是否Enum
 *
 */
public enum CommonIsEnum {
    /**
     * 否
     */
    IS_NO(0,"否"),
    /**
     * 是
     */
    IS_YES(1,"是");

    private Integer code;
    private String name;

    CommonIsEnum(Integer code, String name) {
        this.code = code;
        this.name = name;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
