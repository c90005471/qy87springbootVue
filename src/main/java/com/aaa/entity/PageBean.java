package com.aaa.entity;

/**
 * @Author: 陈建
 * @Date: 2018/12/12 0012 9:30
 * @Version 1.0
 */
import lombok.Data;

import java.util.List;

@Data
public class PageBean<T> {
    // 当前页
    private Integer currentPage = 1;
    // 每页显示的总条数
    private Integer pageSize = 5;
    // 总条数
    private Integer totalNum;
    // 是否有下一页
    private Integer isMore;
    // 总页数
    private Integer totalPage;
    // 开始索引
    private Integer startIndex;
    // 分页结果
    private List<T> items;

}