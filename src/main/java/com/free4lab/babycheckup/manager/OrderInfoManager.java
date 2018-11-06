package com.free4lab.babycheckup.manager;


import com.free4lab.babycheckup.dao.OrderInfoDAO;
import com.free4lab.babycheckup.model.OrderInfo;

/**
 * Created by yph on 17-6-23.
 */
public class OrderInfoManager {

    private static OrderInfoDAO getOrderInfoDAOInstance() {
        return OrderInfoDAO.getInstance();
    }


    public static OrderInfo update(OrderInfo orderInfo) {
        return getOrderInfoDAOInstance().update(orderInfo);
    }

    public static OrderInfo findByOrderNo(String orderNo) {
        return getOrderInfoDAOInstance().findByOrderNo(orderNo);
    }
}
