package com.etc.controller;

import com.etc.common.Constant;
import com.etc.entity.Cart;
import com.etc.entity.CartVO;
import com.etc.entity.User;
import com.etc.service.CartService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/cart")
public class CartController {


    @Autowired
    private CartService cartService;

    @RequestMapping("/index")
    public String cart(Integer pageNum, HttpSession session, Model model) {
        if (pageNum == null) {
            pageNum = 1;
        }
        User user = (User) session.getAttribute("user");
        if (user == null) {
            return "redirect:../user/login";
        }
        model.addAttribute("user", user);
        PageHelper.startPage(pageNum, Constant.RE_PAGE_SIZE);
        List<CartVO> list = cartService.query(user.getuId());
        PageInfo<CartVO> pageInfo = new PageInfo<>(list);
        model.addAttribute("pageInfo", pageInfo);
        return "reception/cart";
    }


    /**
     * 修改购物车商品数量
     */
    @RequestMapping("/updateCartNum")
    @ResponseBody
    public String updateCartNum(@RequestBody CartVO cartVO) {
        cartService.updateCartNum(cartVO);
        return "";
    }
    /**
     * 删除购物车的商品
     */
    @RequestMapping("/deleteCart")
    @ResponseBody
    public String deleteCart(@RequestBody CartVO cartVO) {
        cartService.deleteCart(cartVO);
        return null;
    }

    /**
     * 添加商品到购物车
     */
    @RequestMapping("/addCart")
    @ResponseBody
    public String add_cart(@RequestBody CartVO cartVO, HttpSession session) {
        User user = (User) session.getAttribute("user");
        if (user == null) {//用户没登陆跳到登陆
            return "login";
        }
        Cart cart = new Cart();
        cart.setuId(user.getuId());
        cart.setfId(cartVO.getfId());
        Cart cart1 = cartService.queryOne(cart);
        if (cart1!=null){//查询购物车中的用户是否已添加该商品商品
            cartVO.setcNumber(cart1.getcNumber()+cartVO.getcNumber());
            cartVO.setuId(user.getuId());
            cartService.updateCartNum(cartVO);//是,则修改数量
        }else {
            cartVO.setuId(user.getuId());
            cartService.addCart(cartVO);//否直接添加
        }
        return "success";
    }
}
