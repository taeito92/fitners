package org.dodream.web.fitners.trainerpage.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@MapperScan(basePackages = "org.dodream.web.fitners.trainerpage.mapper")
@ComponentScan(basePackages = "org.dodream.web.fitners.trainerpage.service")
public class TrainerRootConfig {
}
