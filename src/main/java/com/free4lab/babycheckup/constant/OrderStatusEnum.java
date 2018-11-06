package com.free4lab.babycheckup.constant;

public enum OrderStatusEnum {

    WAITING_PAY("待支付","WAITING_PAY"),

    ALREADY_PAY("已支付","ALREADY_PAY"),

    PAY_FAILED("支付失败","PAY_FAILED"),

    REQUEST_FAILED("请求失败","REQUEST_FAILED");
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

    OrderStatusEnum(String name, String index){
        this.name = name;
        this.index = index;
    }

    //根据索引获取名称
    public static String getName(String index) {
        String name = "";
        for (OrderStatusEnum o : OrderStatusEnum.values()) {
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
        for (OrderStatusEnum o : OrderStatusEnum.values()) {
            if (name == o.getName()) {
                index = o.getIndex();
                break;
            }
        }
        return index;
    }
}
