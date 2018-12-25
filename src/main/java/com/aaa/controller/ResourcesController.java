package com.aaa.controller;

import ch.qos.logback.core.net.SyslogOutputStream;
import com.aaa.entity.Resource;
import com.aaa.entity.Tree;
import com.aaa.service.ResourceBiz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @Author: 陈建
 * @Date: 2018/12/15 0015 15:36
 * @Version 1.0
 */
@Controller
public class ResourcesController extends  BaseContrllor {
    @Autowired
    private ResourceBiz resourceBizImpl;
    /**
     * 显示所有的权限树，根据当前用户
     */
    @RequestMapping("/showAllResources")
    @ResponseBody
    public List<Tree> showAllResources(){
        //通过shiro安全框架获取当前登录名
        String shiroUserName = getShiroUserName();
        System.out.println(shiroUserName);
        List<Tree> trees = resourceBizImpl.showAllResources(shiroUserName);
        return trees;
    }
    /**
     * 跳转到显示所有资源页面
     */
    @RequestMapping("/toShowAllResourcesList")
    public String toShowAllResourcesList(){
        System.out.println(2222222+"");
        return "admin/showResource";
    }
    /**
     * 显示所有的权限列表，根据当前用户
     */
    @RequestMapping("/showAllResourcesList")
    @ResponseBody
    public List<Resource> showAllResourcesList(){
        System.out.println("1111111111");
        List<Resource> resourceList = resourceBizImpl.showAllResourcesList();
        return resourceList;
    }
    /**
     * 显示所有的权限列表，根据当前用户
     */
    @RequestMapping("/showAllResourcesTree")
    @ResponseBody
    public List<Tree> showAllResourcesTree(){
        System.out.println("showAllResourcesTree");
        List<Tree>  resourceListTree = resourceBizImpl.showAllResourcesTree();
        return resourceListTree;
    }
}
