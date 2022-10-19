/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.configs;

import com.mycompany.formatter.TypeFormatter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.format.FormatterRegistry;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceView;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

/**
 *
 * @author Qhuy
 */
@Configuration
@EnableWebMvc
@EnableTransactionManagement
@ComponentScan(basePackages = {
        "com.mycompany.controllers",
        "com.mycompany.repository",
        "com.mycompany.service"
        })
public class WebAppContextConfig implements WebMvcConfigurer{
    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer conf) {
        conf.enable();
    }
    
    @Override
    public void addFormatters(FormatterRegistry registry) {
        registry.addFormatter(new TypeFormatter());
    }
    
//    @Override
//    public void addResourceHandlers(ResourceHandlerRegistry registry){
//        registry.addResourceHandler("/js/**").addResourceLocations("/resources/js");
//        registry.addResourceHandler("/images").addResourceLocations("/resources/images");
//    }
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/js/**").addResourceLocations("/resources/js/");
        registry.addResourceHandler("/images").addResourceLocations("/resources/images/");
        registry.addResourceHandler("/css/**").addResourceLocations("/resources/css/");
    }
    
//    @Bean
//    public InternalResourceViewResolver geInternalResourceViewResolver(){
//        InternalResourceViewResolver resource = new InternalResourceViewResolver();
//        resource.setViewClass(JstlView.class);
//        resource.setSuffix(".jsp");
//        resource.setPrefix(("/WEB-INF/jsp/"));
//        return resource;
//    }
}
