package com.etc.dao;

import com.etc.entity.User;
import com.etc.vo.UserVO;

import java.util.List;

public interface UserDAO {
    /**
     * 查询所有用户
     */
    List<User> query();

    /**
     * 按条件查询用户
     */
    List<User> queryByAll(User user);

    /**
     * 查询某个用户
     */
    User queryOne(User user);

    /**
     * 新增用户
     */
    Integer save(UserVO userVO);

    /**
     * 删除用户
     */
    Integer delete(User user);

    /**
     * 修改用户
     */
    Integer update(User user);
}
