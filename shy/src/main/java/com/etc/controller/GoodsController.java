package com.etc.controller;

import com.etc.common.Constant;
import com.etc.common.FileAddress;
import com.etc.converter.FurnitureConverter;
import com.etc.entity.Furniture;
import com.etc.entity.User;
import com.etc.service.FurnitureService;
import com.etc.vo.FurnitureVO;
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
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping(value = "/goods", produces = "text/html;charset=UTF-8")
public class GoodsController {

    @Autowired
    private FurnitureService furnitureService;


    @RequestMapping("/shop")
    public String shop(Furniture furniture, Integer pageNum, Model model){
        if (pageNum == null) {
            pageNum = 1;
        }
        List<Furniture> list1 = furnitureService.queryByAll(furniture);
        PageHelper.startPage(pageNum, Constant.RE_PAGE_SIZE);
        List<Furniture> list = furnitureService.queryByAll(furniture);
        PageInfo<Furniture> pageInfo = new PageInfo<>(list);
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("list",list1);
        return "reception/shop";
    }
    @RequestMapping("/shop_page")
    @ResponseBody
    public String shop_page(@RequestBody Furniture furniture, Integer pageNum, Model model){
        if (pageNum == null) {
            pageNum = 1;
        }
        PageHelper.startPage(pageNum, Constant.RE_PAGE_SIZE);
        List<Furniture> list = furnitureService.queryByAll(furniture);
        PageInfo<Furniture> pageInfo = new PageInfo<>(list);
        model.addAttribute("pageInfo", pageInfo);
        return null;
    }

    @RequestMapping("/product-details")
    public String product_details(Integer fId,Model model) {
        Furniture furniture = new Furniture();
        furniture.setfId(fId);
        Furniture furniture1 = furnitureService.queryOne(furniture);
        model.addAttribute("furniture",furniture1);
        return "reception/product-details";
    }


    @RequestMapping("/bgProducts")
    public String bgProducts(@ModelAttribute("goodsVO") Furniture furniture, Integer pageNum, HttpSession session, Model model) {
        if (session.getAttribute("user") == null) {
            return "redirect:/user/bgLogin";
        } else {
            if (pageNum == null) {
                pageNum = 1;
            }
            Furniture furniture1 = new Furniture();
            if (!StringUtil.isEmpty(furniture.getfName())) {
                furniture1.setfName(furniture.getfName());
            }
            PageHelper.startPage(pageNum, Constant.BG_PAGE_SIZE);
            List<Furniture> list = furnitureService.queryByAll(furniture1);
            PageInfo<Furniture> pageInfo = new PageInfo<>(list);
            model.addAttribute("pageInfo", pageInfo);
            return "backstage/p1";
        }
    }

    @RequestMapping("/update")
    public String update(FurnitureVO furnitureVO) throws IOException {
        if(furnitureVO.getfImage().getOriginalFilename()!=null||!"".equals(furnitureVO.getfImage().getOriginalFilename())){
            File file = new File(new FileAddress().address() + furnitureVO.getfImage().getOriginalFilename());
            if(!file.exists() && !file.isDirectory()){
                furnitureVO.getfImage().transferTo(file);
            }
        }
        Furniture furniture = FurnitureConverter.conver(furnitureVO,furnitureVO.getfImage().getOriginalFilename());
        furnitureService.update(furniture);
        return "redirect:/goods/bgProducts";
    }

    @RequestMapping("/queryById")
    @ResponseBody
    public String queryById(@RequestBody Furniture furniture) {
        //对象转json
        Gson gson = new Gson();
        Furniture furniture1 = furnitureService.queryOne(furniture);
        String json = gson.toJson(furniture1);
        return json;
    }

    @RequestMapping("/delete")
    @ResponseBody
    public String delete(@RequestBody Furniture furniture) {
        int i = furnitureService.delete(furniture);
        return "" + i;
    }

    @RequestMapping("/save")
    public String save(FurnitureVO furnitureVO) throws IOException {
        if(furnitureVO.getfImage().getOriginalFilename()!=null||!"".equals(furnitureVO.getfImage().getOriginalFilename())){
            File file = new File(new FileAddress().address() + furnitureVO.getfImage().getOriginalFilename());
            if(!file.exists() && !file.isDirectory()){
                furnitureVO.getfImage().transferTo(file);
            }
        }
        Furniture furniture = FurnitureConverter.conver(furnitureVO,furnitureVO.getfImage().getOriginalFilename());
        furnitureService.save(furniture);
        return "redirect:/goods/bgProducts";
    }

}
