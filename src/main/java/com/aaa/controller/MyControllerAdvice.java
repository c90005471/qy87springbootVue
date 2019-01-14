package com.aaa.controller;

import com.aaa.entity.ResultModel;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @Author: 陈建
 * @Date: 2019/1/2 0002 14:18
 * @Version 1.0
 * @description:异常统一处理
 */
@ControllerAdvice
public class MyControllerAdvice {
    /**
     * 全局异常捕捉处理
     * @param e
     * @return  ResultModel
     */
    @ResponseBody
    @ExceptionHandler(value = Exception.class)
    public ResultModel errorHandler(Exception e) {
        ResultModel rm = new ResultModel();
        rm.setRetStatus(1);
        rm.setMessage("我的错！错误信息："+e.getMessage());
        return rm;
    }

}
