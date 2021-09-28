package org.dodream.web.fitners.auction.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@EnableWebMvc
@ComponentScan(basePackages = "org.dodream.web.fitners.auction.controller")
public class AuctionServletConfig implements WebMvcConfigurer {

}