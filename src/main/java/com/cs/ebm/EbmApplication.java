package com.cs.ebm;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import lombok.extern.log4j.Log4j2;

@Log4j2
@SpringBootApplication
public class EbmApplication {
	
	public static void main(String[] args) {
		SpringApplication.run(EbmApplication.class, args);
		log.info("Welcome to EBM Application");
	}

}
