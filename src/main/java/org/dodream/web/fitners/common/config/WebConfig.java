package org.dodream.web.fitners.common.config;


import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.gallery.config.GalleryRootConfig;
import org.dodream.web.fitners.gallery.config.GalleryServletConfig;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
import javax.servlet.Filter;
import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletRegistration;

@Log4j2
public class WebConfig extends AbstractAnnotationConfigDispatcherServletInitializer {

    @Override //루트연결
    protected Class<?>[] getRootConfigClasses() {

        log.info("1----------------------------------1");
        log.info("1----------------------------------1");

        return new Class[]{RootConfig.class, GalleryRootConfig.class};
    }

    @Override //서블릿연결
    protected Class<?>[] getServletConfigClasses() {

        log.info("2----------------------------------2");
        log.info("2----------------------------------2");

        return new Class[]{ServletConfig.class, GalleryServletConfig.class};
    }

    @Override //서블릿매핑
    protected String[] getServletMappings() {
        return new String[]{"/"};
    }

    @Override //예외처리
    protected void customizeRegistration(ServletRegistration.Dynamic registration) {
        registration.setInitParameter("throwExceptionIfNoHandlerFound", "true");
        MultipartConfigElement multipartConfigElement
                = new MultipartConfigElement("C:\\upload\\temp",
                1024*1024*10, 1024*1024*20, 1024*1024*1);
        registration.setMultipartConfig(multipartConfigElement);
    }

    @Override //한글처리
    protected Filter[] getServletFilters() {
        CharacterEncodingFilter utf8Filter = new CharacterEncodingFilter();
        utf8Filter.setEncoding("UTF-8");
        utf8Filter.setForceEncoding(true);

        return new Filter[]{utf8Filter};
    }

}
