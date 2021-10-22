package org.dodream.web.fitners.gallery.config;


import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@MapperScan(basePackages = "org.dodream.web.fitners.gallery.mapper")
@ComponentScan(basePackages ="org.dodream.web.fitners.gallery.service" )
public class GalleryRootConfig {
}
