package com.etc.service;

import com.etc.dao.OrderDAO;
import com.etc.entity.Order;
import com.etc.entity.OrderMap;
import com.etc.vo.OrderVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderService {


    @Autowired
    private OrderDAO orderDAO;

    /**
     * 新增订单
     */
    public void save(OrderVO orderVO) {
        orderDAO.save(orderVO);
    }



    /**
     * 查询用户订单
     */
    public List<OrderMap> queryOrder(OrderVO orderVO){
        return orderDAO.queryOrder(orderVO);
    }


    /**
     * 修改用户订单
     */
    public void updateOrder(Order order){
        orderDAO.updateOrder(order);
    }

    /**
     * 删除订单
     */
    public void deleteOrder(Order order){
        orderDAO.deleteOrder(order);
    }
}
