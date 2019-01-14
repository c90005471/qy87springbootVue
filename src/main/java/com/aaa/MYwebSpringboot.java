package com.aaa;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

/**
 * @Author: 陈建
 * @Date: 2019/1/12 0012 16:41
 * @Version 1.0
 */
public class MYwebSpringboot  extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(Qy87vuespringbootApplication.class);
    }

}
