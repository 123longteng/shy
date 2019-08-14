package com.etc.converter;

import com.etc.entity.User;
import com.etc.vo.OrderVO;
import com.etc.vo.OrderVO2;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OrderConverter {
    public static List<OrderVO> conver(OrderVO2 orderVO2, User user){
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        Date date = null;
        try {
            date = simpleDateFormat.parse(orderVO2.getoDate());
        } catch (ParseException e) {
            e.printStackTrace();
        }
        List<OrderVO> list = new ArrayList<>();
        String[] id_nums = orderVO2.getIdNum().split("/");
        String[] ids = id_nums[0].split(",");
        String[] nums = id_nums[1].split(",");
        for (int i=0;i<ids.length;i++){
            OrderVO orderVO = new OrderVO();
            orderVO.setuId(user.getuId());
            orderVO.setoDate(date);
            orderVO.setoId(orderVO2.getoId());
            orderVO.setfId(Integer.valueOf(ids[i]));
            orderVO.setoNumber(Integer.valueOf(nums[i]));
            list.add(orderVO);
        }
        return list;
    }
}
