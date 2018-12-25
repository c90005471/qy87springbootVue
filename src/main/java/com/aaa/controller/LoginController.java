package com.aaa.controller;

import com.aaa.entity.ResultModel;
import com.aaa.entity.User;
import com.aaa.service.ILoginService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.DisabledAccountException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @Author: 陈建
 * @Date: 2018/12/12 0012 22:25
 * @Version 1.0
 */
@Controller
public class LoginController extends  BaseContrllor {
    @Autowired
    private ILoginService loginService;

    //退出的时候是get请求，主要是用于退出
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String login(){
        return "login";
    }
    //post登录
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    @ResponseBody
    public ResultModel login(@RequestBody User user){
        System.out.println(user.getLoginName());
        System.out.println("login");
        //添加用户认证信息
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(user.getLoginName(),user.getPassword());
        //进行验证，这里可以捕获异常，然后返回对应信息

        try {
            subject.login(usernamePasswordToken);
            System.out.println("aaaaaaaaaaaaaaaaa");
            //return "index";
            return returnSuccessInfo("登录成功！");
        } catch (UnknownAccountException e) {
           // throw new RuntimeException("账号不存在！", e);
            return returnErrorInfo("账号不存在！");
        } catch (DisabledAccountException e) {
            //throw new RuntimeException("账号未启用！", e);
            return returnErrorInfo("账号未启用！");
        } catch (IncorrectCredentialsException e) {
            //throw new RuntimeException("密码错误！", e);
            return returnErrorInfo("密码错误！");
        } catch (Throwable e) {
            //throw new RuntimeException(e.getMessage(), e);
            return  returnErrorInfo(e.getMessage());
        }

    }
    @RequestMapping(value = "/toindex")
    public String toindex(){
        return "index";
    }

    //登出
    @RequestMapping(value = "/logout")
    public String logout(){
        return "logout";
    }

    //错误页面展示
    @RequestMapping(value = "/error",method = RequestMethod.POST)
    public String error(){
        return "error ok!";
    }

    //数据初始化
    @RequestMapping(value = "/addUser")
    public String addUser(@RequestBody User map){
        User user = loginService.addUser(map);
        return "addUser is ok! \n" + user;
    }

    //角色初始化
    /*@RequestMapping(value = "/addRole")
    public String addRole(@RequestBody Map<String,Object> map){
        Role role = loginService.addRole(map);
        return "addRole is ok! \n" + role;
    }*/

    //注解的使用
    @RequiresRoles("admin")
    //@RequiresPermissions("create")
    @RequestMapping(value = "/create")
    public String create(){
        System.out.println("create");
        return "Create success!";
    }
    @RequestMapping("/tojuese")
    public String tojuese(){
        return "bumen";
    }
    @RequestMapping("/toziyuan")
    public String toziyuan(){
        return "ziyuan";
    }

}
