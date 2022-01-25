package com.cognizant.stars;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

//main controller
@SpringBootApplication
@ComponentScan("com*")
public class StarsApplication {

	public static void main(String[] args) {
		SpringApplication.run(StarsApplication.class, args);
	}

}
