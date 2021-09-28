package org.dodream.web.fitners.fboard.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@EnableWebMvc
@ComponentScan(basePackages = "org.dodream.web.fitners.fboard.controller")
public class FboardServletConfig {
}
