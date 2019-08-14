package com.etc.dao;

import com.etc.entity.Cart;
import com.etc.entity.CartVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CartDAO {

    /**查询用户购物车*/
    List<CartVO> query(@Param("uId") Integer uId);

    /**修改购物车商品数量*/
    void updateCartNum(CartVO cartVO);

    /**删除购物车中的商品*/
    void deleteCart(CartVO cartVO);

    /**添加商品到购物车*/
    void addCart(CartVO cartVO);

    /**查询购物车中的用户已添加的商品*/
    Cart queryOne(Cart cart);

}
