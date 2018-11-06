package com.free4lab.babycheckup.dao;

import com.free4lab.babycheckup.model.OrderInfo;
import com.free4lab.utils.sql.AbstractDAO;
import com.free4lab.utils.sql.IEntityManagerHelper;
import com.free4lab.utils.sql.entitymanager.NoCacheEntityManagerHelper;
import org.springframework.util.CollectionUtils;

import java.util.List;


/**
 * Created by Administrator on 2018/3/18.
 */
public class OrderInfoDAO extends AbstractDAO<OrderInfo> {
    private static class BabySchemaDAOSingletonHolder {
        static OrderInfoDAO instance = new OrderInfoDAO();
    }

    public static OrderInfoDAO getInstance() {
        return OrderInfoDAO.BabySchemaDAOSingletonHolder.instance;
    }

    @Override
    public Class getEntityClass() {
        return OrderInfo.class;
    }

    private static final String PU_NAME = "BabyCheckup_PU";

    @Override
    public String getPUName() {
        return PU_NAME;
    }

    @Override
    public IEntityManagerHelper getEntityManagerHelper() {
        return new NoCacheEntityManagerHelper();
    }

    public OrderInfo update(OrderInfo orderInfo) {
        return super.update(orderInfo);
    }

    public OrderInfo findByOrderNo(String orderNo){
        List<OrderInfo> list = findByProperty("orderNo",orderNo);
        if(!CollectionUtils.isEmpty(list)){
            OrderInfo record = list.get(0);
            return record;
        }else {
            return null;
        }
    }
}
