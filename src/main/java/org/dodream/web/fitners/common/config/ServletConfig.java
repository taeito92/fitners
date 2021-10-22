package org.dodream.web.fitners.common.config;


import org.dodream.web.fitners.auction.config.AuctionRootConfig;
import org.dodream.web.fitners.auction.config.AuctionServletConfig;
import org.dodream.web.fitners.common.converter.StringToLocalDateTimeConverter;
import org.dodream.web.fitners.fboard.config.FboardServletConfig;
import org.dodream.web.fitners.gallery.config.GalleryServletConfig;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Import;
import org.springframework.format.FormatterRegistry;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@EnableWebMvc
@Import({AuctionServletConfig.class, FboardServletConfig.class, GalleryServletConfig.class})
@ComponentScan(basePackages = {"org.dodream.web.fitners.common.controller", "org.dodream.web.fitners.common.exception"})
public class ServletConfig implements WebMvcConfigurer {

    @Override
    public void configureViewResolvers(ViewResolverRegistry registry) {

        InternalResourceViewResolver bean = new InternalResourceViewResolver();
        bean.setViewClass(JstlView.class);
        bean.setPrefix("/WEB-INF/views/");
        bean.setSuffix(".jsp");
        registry.viewResolver(bean);
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
    }

    @Override //시간변환
    public void addFormatters(FormatterRegistry registry) {
        registry.addConverter(new StringToLocalDateTimeConverter());
    }


}
