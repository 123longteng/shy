package com.etc.controller;


import com.etc.common.Constant;
import com.etc.entity.User;
import com.etc.service.UserService;
import com.etc.vo.UserVO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.github.pagehelper.util.StringUtil;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value = "/user", produces = "text/html;charset=UTF-8")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    public String login() {
        return "reception/login";
    }

    @RequestMapping("/loginDo")
    @ResponseBody
    public String loginDo(@RequestBody User user,HttpSession session){
        if (StringUtil.isEmpty(user.getuName())||StringUtil.isEmpty(user.getuPass())){
            return "fail";
        }else {
            User user1 = userService.queryOne(user);
            if (user1==null){
                return "fail";
            }
            session.setAttribute("user",user1);
            return "success";
        }
    }

    @RequestMapping("/bgLogin")
    public String bgLogin() {
        return "backstage/login";
    }
	
    @RequestMapping("/bgLoginDo")
    @ResponseBody
    public String bgLoginDo(@RequestBody User user,HttpSession session) {
        if (StringUtil.isEmpty(user.getuName())||StringUtil.isEmpty(user.getuPass())){
            return "fail";
        }else {
            User user1 = userService.queryOne(user);
            if (user1==null){
                return "fail";
            }
            if(user1.getuId()!=1){
                return "fail";
            }
            session.setAttribute("user",user1);
            return "success";
        }
    }

    @RequestMapping("/register")
    public String register() {
        return "reception/register";
    }

    @RequestMapping("/about")
    public String about() {
        return "reception/about";
    }

    @RequestMapping("/contact")
    public String contact() {
        return "reception/contact";
    }

    @RequestMapping("/index")
    public String index(@ModelAttribute("userVO") UserVO userVO, Integer pageNum, Model model, HttpSession session) {
        if (session.getAttribute("user")==null){
            return "redirect:/user/bgLogin";
        }else{
            if(pageNum==null){
                pageNum=1;
            }
            User user = new User();
            if (!StringUtil.isEmpty(userVO.getName())){
                user.setuName(userVO.getName());
            }
            PageHelper.startPage(pageNum, Constant.BG_PAGE_SIZE);
            List<User> list = userService.queryByAll(user);
            PageInfo<User> pageInfo = new PageInfo<>(list);

            model.addAttribute("pageInfo", pageInfo);
            return "backstage/p3";
        }
    }

    @RequestMapping("/update")
    @ResponseBody
    public String update(@RequestBody User user) {
        int i = userService.update(user);
        return "" + i;
    }

    @RequestMapping("/queryById")
    @ResponseBody
    public String queryById(@RequestBody User user) {
        //对象转json
        Gson gson = new Gson();
        User user1 = userService.queryOne(user);
        String json = gson.toJson(user1);
        return json;
    }

    @RequestMapping("/delete")
    @ResponseBody
    public String delete(@RequestBody User user) {
        int i = userService.delete(user);
        return "" + i;
    }

    @RequestMapping("/save")
    @ResponseBody
    public String save(@RequestBody UserVO userVO) {
        int i = userService.save(userVO);
        return "" + i;
    }
}
