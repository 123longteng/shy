package com.etc.controller;

import com.etc.common.Constant;
import com.etc.entity.Furniture;
import com.etc.service.FurnitureService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.github.pagehelper.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/main")
public class IndexController {

    @Autowired
    private FurnitureService furnitureService;

    @RequestMapping("/index")
    public String index(Furniture furniture, Integer pageNum, HttpSession session, Model model){
        if (pageNum == null) {
            pageNum = 1;
        }
        Furniture furniture1 = new Furniture();
        if (!StringUtil.isEmpty(furniture.getfName())) {
            furniture1.setfName(furniture.getfName());
        }
        PageHelper.startPage(pageNum, Constant.RE_PAGE_SIZE);
        List<Furniture> list = furnitureService.queryByAll(furniture1);
        PageInfo<Furniture> pageInfo = new PageInfo<>(list);
        model.addAttribute("pageInfo", pageInfo);
        return "reception/index";
    }

    @RequestMapping("/bgIndex")
    public String bgIndex(){
        return "backstage/index";
    }

    @RequestMapping("/news")
    public String news(){
        return "reception/news";
    }

    @RequestMapping("/news_article")
    public String news_article(){
        return "reception/news_article";
    }

    @RequestMapping("/sitemap")
    public String sitemap(){
        return "reception/sitemap";
    }
}
