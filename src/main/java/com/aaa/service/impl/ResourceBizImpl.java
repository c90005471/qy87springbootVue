package com.aaa.service.impl;

import com.aaa.dao.ResourceMapper;
import com.aaa.dao.UserMapper;
import com.aaa.entity.Resource;
import com.aaa.entity.Role;
import com.aaa.entity.Tree;
import com.aaa.entity.User;
import com.aaa.service.ResourceBiz;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @Author: 陈建
 * @Date: 2018/12/15 0015 15:46
 * @Version 1.0
 */
@Service
public class ResourceBizImpl implements ResourceBiz {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private ResourceMapper resourceMapper;
    @Override
    public List<Tree> showAllResources(String username) {
        List<Tree> trees = new ArrayList<Tree>();
        //根据名称返回用户对象
        User user = userMapper.findByName(username);
        //根据用户id返回所有的角色信息
        List<Role> roleList = userMapper.findRoleByUserId(user.getId());
        for (Role role : roleList) {
            //根据角色id获取所有的权限
            List<Resource> resourceList = userMapper.findResourceByRoleIds(role.getId());
            if (resourceList == null) {
                return trees;
            }
            for (Resource resource : resourceList) {
                if(resource!=null && resource.getResourceType()==0){
                    Tree tree = new Tree();
                    tree.setId(resource.getId());
                    tree.setPid(resource.getPid());
                    tree.setText(resource.getName());
                    tree.setIconCls(resource.getIcon());
                    tree.setAttributes(resource.getUrl());
                    tree.setOpenMode(resource.getOpenMode());
                    tree.setState(resource.getOpened()+"");
                    trees.add(tree);
                }

            }
        }

        return trees;
    }

    /**
     * 查询所有的资源
     * @return
     */
    @Override
    public List<Resource> showAllResourcesList() {

        return resourceMapper.findAllResource();
    }

    /**
     * 返回资源树
     * @return
     */
    @Override
    public  List<Tree> showAllResourcesTree(int resourceType){

        List<Tree> trees = new ArrayList<Tree>();
        List<Resource> resourceList= new ArrayList<Resource>();
        if( resourceType==1){

            resourceList = resourceMapper.findAllResource();
        }else{
            resourceList = resourceMapper.findAllMenuResource();
        }
        //计算一级菜单
        for (Resource resource : resourceList) {
            if(resource.getResourceType()==0&&resource.getPid()==null){
                Tree tree = new Tree();
                tree.setId(resource.getId());
                tree.setPid(resource.getPid());
                tree.setText(resource.getName());
                tree.setIconCls(resource.getIcon());
                tree.setAttributes(resource.getUrl());
                tree.setOpenMode(resource.getOpenMode());
                tree.setState(resource.getOpened()+"");
                tree.setChildren(showAllChildResourcesTree(resource, resourceList));
                trees.add(tree);
            }

        }

        return trees;
    }



    /**
     * 返回所有的孩子资源
     * @param  parentResource,resourceList
     * @return List<Tree>
     */
    public  List<Tree> showAllChildResourcesTree(Resource parentResource,List<Resource> resourceList){
        List<Tree> childList= new ArrayList<Tree>();
        for (Resource resource : resourceList) {
            if(resource.getPid()!=null && resource.getPid().equals(parentResource.getId())){
                Tree tree = new Tree();
                tree.setId(resource.getId());
                tree.setPid(resource.getPid());
                tree.setText(resource.getName());
                tree.setIconCls(resource.getIcon());
                tree.setAttributes(resource.getUrl());
                tree.setOpenMode(resource.getOpenMode());
                tree.setState(resource.getOpened()+"");
                tree.setChildren(showAllChildResourcesTree(resource,resourceList));
                childList.add(tree);
            }

        }
        return childList;
    }

    /**
     * 添加资源
     * @param resource
     * @return
     */
    @Override
    public int addResource(Resource resource) {
        return resourceMapper.insert(resource) ;
    }

    /**
     * 批量删除资源
     * @param id
     * @return
     */
    @Override
    public int delResource(Long id) {
        //获取所有当前资源和当前资源的后代资源
        List<Long> childResourceIds = resourceMapper.findChildResourceById(id);
        //批量删除根据id的list集合
        return resourceMapper.deleteResourceByIds(childResourceIds);
    }

    @Override
    public Map<String, Object> findResourceById(Long id) {
        return resourceMapper.findResourceById(id);
    }

    @Override
    public int editResource(Resource resource) {
        return resourceMapper.editResource( resource);
    }
}
