package com.etc.service;

import com.etc.dao.CartDAO;
import com.etc.entity.Cart;
import com.etc.entity.CartVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartService {

    @Autowired
    private CartDAO cartDAO;

    /**查询用户购物车*/
    public List<CartVO> query(Integer uId){
        return cartDAO.query(uId);
    }

    /**修改购物车商品数量*/
    public void updateCartNum(CartVO cartVO){
        cartDAO.updateCartNum(cartVO);
    }

    /**删除购物车中的商品*/
    public void deleteCart(CartVO cartVO){
        cartDAO.deleteCart(cartVO);
    }

    /**添加商品到购物车*/
    public void addCart(CartVO cartVO){
        cartDAO.addCart(cartVO);
    }

    /**查询购物车中的用户已添加的商品*/
    public Cart queryOne(Cart cart){
        return cartDAO.queryOne(cart);
    }
}
