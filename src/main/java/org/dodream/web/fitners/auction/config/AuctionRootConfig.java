package org.dodream.web.fitners.auction.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@MapperScan(basePackages = "org.dodream.web.fitners.auction.mapper")
public class AuctionRootConfig {
}
