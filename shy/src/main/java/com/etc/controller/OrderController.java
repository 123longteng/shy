package com.etc.controller;


import com.etc.converter.CartConverter;
import com.etc.converter.OrderConverter;
import com.etc.entity.CartVO;
import com.etc.entity.Order;
import com.etc.entity.OrderMap;
import com.etc.entity.User;
import com.etc.service.CartService;
import com.etc.service.OrderService;
import com.etc.vo.OrderVO;
import com.etc.vo.OrderVO2;
import com.sun.deploy.net.HttpResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.crypto.Data;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderController {


    @Autowired
    private OrderService orderService;

    @Autowired
    private CartService cartService;

    @RequestMapping("/bgOrder")
    public String bgOrder(HttpSession session){
        if (session.getAttribute("user")==null){
            return "redirect:/user/bgLogin";
        }else{
            return "backstage/p2";
        }
    }

    @RequestMapping("/reOrder")
    public String reOrder(OrderVO orderVO, HttpSession session, Model model){
        User user = (User) session.getAttribute("user");
        if (user==null){
            return "redirect:/user/login";
        }else{
            orderVO.setuId(user.getuId());
            List<OrderMap> list = orderService.queryOrder(orderVO);
            model.addAttribute("list",list);
            return "reception/order";
        }
    }

    @RequestMapping("/add_order")
    public String add_order(OrderVO2 orderVO2 ,String WIDtotal_amount, HttpSession session,Model model){
        User user = (User) session.getAttribute("user");
        List<OrderVO> list = OrderConverter.conver(orderVO2,user);
        for (OrderVO orderVO : list){
            orderService.save(orderVO);
        }
        List<CartVO> list2 = CartConverter.conver(orderVO2,user);
        for (CartVO cartVO : list2){
            cartService.deleteCart(cartVO);
        }
        String order_id = orderVO2.getoId();
        return "redirect:/pay/index/"+WIDtotal_amount+"/"+order_id;
    }

    @RequestMapping("/deleteOrder")
    @ResponseBody
    public String deleteOrder(@RequestBody Order order){
        orderService.deleteOrder(order);
        return null;
    }
}
