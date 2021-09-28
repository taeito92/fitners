package org.dodream.web.fitners.fboard.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@MapperScan(basePackages = "org.dodream.web.fitners.fboard.mapper")
@ComponentScan(basePackages = "org.dodream.web.fitners.fboard.service")
public class FboardRootConfig {
}
