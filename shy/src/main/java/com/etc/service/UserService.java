package com.etc.service;

import com.etc.dao.UserDAO;
import com.etc.entity.User;
import com.etc.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserDAO userDAO;

    /**
     * 查询所有用户
     */
    public List<User> query() {
        return userDAO.query();
    }

    /**
     * 按条件查询用户
     */
    public List<User> queryByAll(User user) {
        return userDAO.queryByAll(user);
    }

    /**
     * 查询某个用户
     */
    public User queryOne(User user) {
        return userDAO.queryOne(user);
    }

    /**
     * 新增用户
     */
    public Integer save(UserVO userVO) {
        return userDAO.save(userVO);
    }

    /**
     * 删除用户
     */
    public Integer delete(User user) {
        return userDAO.delete(user);
    }

    /**
     * 修改用户
     */
    public Integer update(User user) {
        return userDAO.update(user);
    }

}
