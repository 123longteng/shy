package com.etc.dao;

import com.etc.entity.Furniture;

import java.util.List;

public interface FurnitureDAO {
    /**
     * 查询所有家具
     */
    List<Furniture> query();

    /**
     * 按条件查询家具
     */
    List<Furniture> queryByAll(Furniture furniture);

    /**
     * 查询某个家具
     */
    Furniture queryOne(Furniture furniture);

    /**
     * 新增家具
     */
    Integer save(Furniture furniture);

    /**
     * 删除家具
     */
    Integer delete(Furniture furniture);

    /**
     * 修改家具
     */
    Integer update(Furniture furniture);
}
