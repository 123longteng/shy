package com.etc.dao;


import com.etc.entity.OrderMap;
import com.etc.entity.User;
import com.etc.entity.CartVO;
import com.etc.vo.OrderVO;
import com.etc.vo.UserVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.io.IOException;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class UserDAOTest {

    @Autowired
    private UserDAO userDAO;

    @Autowired
    private CartDAO cartDAO;

    @Autowired
    private OrderDAO orderDAO;

    @Test
    public void test() throws IOException {

        User user = new User();
        user.setuName("qlt");

        List<User> list = userDAO.queryByAll(user);

        for (User u : list) {
            System.out.println(u);
        }
    }

    @Test
    public void addTest() throws IOException {

        UserVO user = new UserVO();
        user.setName("longteng");
        user.setPass("123456");
        user.setTell("123456879");
        user.setAddress("地方");

        int i = userDAO.save(user);

        System.out.println(i);
    }
    @Test
    public void cartTest(){
        List<CartVO> list = cartDAO.query(2);
        for (CartVO c: list){
            System.out.println(c);
        }
    }
    @Test
    public void upNumCartTest(){
        CartVO cartVO = new CartVO();
        cartVO.setcNumber(5);
        cartVO.setuId(2);
        cartVO.setfId(2);
        cartDAO.updateCartNum(cartVO);
    }
    @Test
    public void selOrder(){
        OrderVO orderVO = new OrderVO();
        orderVO.setuId(2);
        List<OrderMap> list = orderDAO.queryOrder(orderVO);
        for(OrderMap o : list){
            System.out.println(o);
        }
    }
}
