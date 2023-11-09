package com.cs.ebm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WelcomeController {

	@RequestMapping("/")
	public String landingPage() {
		System.out.println("Welcome to LoginPage : Called");
		return "login";
	}

}
