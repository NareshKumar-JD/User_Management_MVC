package com.springmvcproject;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages = {"com.springmvcproject"})
public class MyConfig {
	//creating object for viewResolver for not affecting frontend,
	//even if change jsp, thimeleaf or other
	@Bean
	public ViewResolver internalResourceViewResolver() {
	    InternalResourceViewResolver ir = new InternalResourceViewResolver();
	    ir.setPrefix("/WEB-INF/");
	    ir.setSuffix(".jsp");
	    return ir;
	}

}
