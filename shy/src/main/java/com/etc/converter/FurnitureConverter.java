package com.etc.converter;

import com.etc.entity.Furniture;
import com.etc.vo.FurnitureVO;

public class FurnitureConverter {
    public static Furniture conver(FurnitureVO furnitureVO,String image){
        Furniture furniture = new Furniture();
        furniture.setfName(furnitureVO.getfName());
        furniture.setfId(furnitureVO.getfId());
        furniture.setfPrice(furnitureVO.getfPrice());
        furniture.setfNumber(furnitureVO.getfNumber());
        furniture.setfText(furnitureVO.getfText());
        furniture.setfImage(image);
        furniture.setfLong(furnitureVO.getfLong());
        furniture.setfWide(furnitureVO.getfWide());
        furniture.setfHigh(furnitureVO.getfHigh());
        furniture.setfAmount(furnitureVO.getfAmount());
        furniture.settId(furnitureVO.getoId());
        furniture.setoId(furnitureVO.getoId());
        return furniture;
    }
}
