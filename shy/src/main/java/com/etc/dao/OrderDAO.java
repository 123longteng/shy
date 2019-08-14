package com.etc.dao;

import com.etc.entity.Order;
import com.etc.entity.OrderMap;
import com.etc.vo.OrderVO;

import java.util.List;

public interface OrderDAO {
    /**
     * 新增订单
     */
    void save(OrderVO orderVO);

    /**
     * 查询用户订单
     */
    List<OrderMap> queryOrder(OrderVO orderVO);

    /**
     * 修改用户订单
     */
    void updateOrder(Order order);

    /**
     * 删除订单
     */
    void deleteOrder(Order order);
}
