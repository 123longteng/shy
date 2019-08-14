package com.etc.common;

public class FileAddress {
    public String address(){
        String str = getClass().getResource(".").getFile().toString();
        String string="";
        String[] locals=str.split("/");
        for(int i=1;i<locals.length;i++){
            if(Constant.PROJECT_NAME.equals(locals[i])){
                string+=locals[i]+"\\";
                break;
            }
            string+=locals[i]+"\\";
        }
        return string+ Constant.UPLOAD_DIR;
    }
}
