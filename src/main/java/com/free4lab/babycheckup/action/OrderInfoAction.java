package com.free4lab.babycheckup.action;

import com.free4lab.babycheckup.constant.OrderStatusEnum;
import com.free4lab.babycheckup.manager.OrderInfoManager;
import com.free4lab.babycheckup.model.OrderInfo;
import org.apache.commons.lang.StringUtils;

public class OrderInfoAction {

    private String payFlag;
    private String orderId;


    public String isOrderPayed() {
        if(StringUtils.isBlank(orderId)){
            payFlag = "0";//失败
        }else {
            OrderInfo updateOrder = OrderInfoManager.findByOrderNo(orderId);
            if(updateOrder==null){
                payFlag = "0";//失败
            }else if(OrderStatusEnum.ALREADY_PAY.getIndex().equals(updateOrder.getOrderStatus())){
                payFlag = "1";//成功
            }else {
                payFlag = "0";//成功
            }
        }
        return "success";
    }

    public String getPayFlag() {
        return payFlag;
    }

    public void setPayFlag(String payFlag) {
        this.payFlag = payFlag;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

}
