package com.etc.converter;

import com.etc.entity.CartVO;
import com.etc.entity.User;
import com.etc.vo.OrderVO;
import com.etc.vo.OrderVO2;

import java.util.ArrayList;
import java.util.List;

public class CartConverter {
    public static List<CartVO> conver(OrderVO2 orderVO2, User user){
        List<CartVO> list = new ArrayList<>();
        String[] id_nums = orderVO2.getIdNum().split("/");
        String[] ids = id_nums[0].split(",");
        for (int i=0;i<ids.length;i++){
            CartVO cartVO = new CartVO();
            cartVO.setuId(user.getuId());
            cartVO.setfId(Integer.valueOf(ids[i]));
            list.add(cartVO);
        }
        return list;
    }
}
