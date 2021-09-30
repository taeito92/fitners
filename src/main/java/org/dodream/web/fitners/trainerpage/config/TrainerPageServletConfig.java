package org.dodream.web.fitners.trainerpage.config;


import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@EnableWebMvc
@ComponentScan(basePackages = "org.dodream.web.fitners.trainerpage.controller")
public class TrainerPageServletConfig {
}
