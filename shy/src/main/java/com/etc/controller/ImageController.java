package com.etc.controller;


import com.etc.common.FileAddress;
import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.IOException;

@Controller
@RequestMapping("/image")
public class ImageController {

    @RequestMapping("/show")
    public String image(String imageName, HttpServletResponse response) throws IOException {
        //将图片的输入流，复制到response的输出流中
        FileInputStream fileInputStream = new FileInputStream(new FileAddress().address() + imageName);
        IOUtils.copy(fileInputStream, response.getOutputStream());
        IOUtils.closeQuietly(fileInputStream);
        IOUtils.closeQuietly(response.getOutputStream());
        return null;
    }
}
