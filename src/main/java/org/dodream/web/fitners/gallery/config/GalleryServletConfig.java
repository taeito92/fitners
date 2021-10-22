package org.dodream.web.fitners.gallery.config;


import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@EnableWebMvc
@ComponentScan(basePackages = "org.dodream.web.fitners.gallery.controller")
public class GalleryServletConfig  {
}
