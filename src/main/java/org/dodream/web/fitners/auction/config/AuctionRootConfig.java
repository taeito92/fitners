package org.dodream.web.fitners.auction.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@MapperScan(basePackages = "org.dodream.web.fitners.auction.mapper")
@ComponentScan(basePackages = "org.dodream.web.fitners.auction.service")
public class AuctionRootConfig {


}