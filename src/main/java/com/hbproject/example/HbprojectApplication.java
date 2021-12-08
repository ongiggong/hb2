package com.hbproject.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class HbprojectApplication {

	public static void main(String[] args) {
		SpringApplication.run(HbprojectApplication.class, args);
		System.out.println("Well Done");
	}

@SpringBootApplication
class WebApplication extends SpringBootServletInitializer{
	public void main(String[] args) {
		SpringApplication.run(WebApplication.class, args);
	}
@Override
protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
	return super.configure(builder);
}

}
}
