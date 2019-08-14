package com.etc.service;


import com.etc.dao.FurnitureDAO;
import com.etc.entity.Furniture;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FurnitureService {

    @Autowired
    private FurnitureDAO furnitureDAO;

    /**
     * 查询所有家具
     */
    public List<Furniture> query() {
        return furnitureDAO.query();
    }

    /**
     * 按条件查询家具
     */
    public List<Furniture> queryByAll(Furniture furniture) {
        return furnitureDAO.queryByAll(furniture);
    }

    /**
     * 查询某个家具
     */
    public Furniture queryOne(Furniture furniture) {
        return furnitureDAO.queryOne(furniture);
    }

    /**
     * 新增家具
     */
    public Integer save(Furniture furniture) {
        return furnitureDAO.save(furniture);
    }

    /**
     * 删除家具
     */
    public Integer delete(Furniture furniture) {
        return furnitureDAO.delete(furniture);
    }

    /**
     * 修改家具
     */
    public Integer update(Furniture furniture) {
        return furnitureDAO.update(furniture);
    }
}
