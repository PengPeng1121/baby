package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.constant.OrderStatusEnum;
import com.free4lab.babycheckup.manager.OrderInfoManager;
import com.free4lab.babycheckup.model.OrderInfo;
import org.apache.commons.lang.StringUtils;

public class OrderInfoAction {

    private String flag;
    private String orderId;


    public String isOrderPayed() {
        if(StringUtils.isBlank(orderId)){
            flag = "0";//失败
        }else {
            OrderInfo updateOrder = OrderInfoManager.findByOrderNo(orderId);
            if(updateOrder==null){
                flag = "0";//失败
            }else if(OrderStatusEnum.ALREADY_PAY.getIndex().equals(updateOrder.getOrderStatus())){
                flag = "1";//成功
            }
        }
        return "success";
    }

    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

}
