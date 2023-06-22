package com.dianping.cat;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ImportResource;

/**
 * @author: admin
 * @date: 2023/6/22-17:55
 * @description:
 */
@ImportResource({"classpath*:WEB-INF/web.xml"})
@SpringBootApplication
public class CatServerApplication {
    public static void main(String[] args) {
        SpringApplication.run(CatServerApplication.class, args);
    }
}
