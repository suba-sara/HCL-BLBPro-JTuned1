package com.bldbank;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@EnableJpaAuditing
@EntityScan(basePackages="com.bldbank")
@ComponentScan(basePackages = "com.bldbank")
@SpringBootApplication
@EnableJpaRepositories
public class BlbProjectApplication extends SpringBootServletInitializer{

	public static void main(String[] args) {
		SpringApplication.run(BlbProjectApplication.class, args);
	}

	protected SpringApplicationBuilder configure(SpringApplicationBuilder applicationBuilder) {
		return applicationBuilder.sources(SpringApplication.class);
	}
	
	
}
