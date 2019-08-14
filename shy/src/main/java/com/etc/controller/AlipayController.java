package com.etc.controller;


import com.etc.entity.Order;
import com.etc.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;

@Controller
@RequestMapping("pay")
public class AlipayController {

    @Autowired
    private OrderService orderService;

    @RequestMapping("/return")
    public String pay(String out_trade_no,Double total_amount){
        Order order = new Order();
        order.setoId(out_trade_no);
        order.setoStatus(1);
        order.setoDate(new Date());
        orderService.updateOrder(order);
        return "redirect:/order/reOrder";
    }
    @RequestMapping("/index/{WIDtotal_amount}/{order_id}")
    public String index(Model model, @PathVariable("WIDtotal_amount") String WIDtotal_amount, @PathVariable("order_id") String order_id){
        model.addAttribute("WIDtotal_amount",WIDtotal_amount);
        model.addAttribute("WIDout_trade_no",order_id);
        return "alipay/index";
    }
    @RequestMapping("/alipay")
    public String alipay(){
        return "alipay/alipay.trade.page.pay";
    }
}
