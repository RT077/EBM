package com.cs.ebm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
public class NavigationController {

	@RequestMapping(value = "/register")
	public String navToRegisterPage() {
		log.info(this.getClass().getSimpleName());
		return "register";
	}
	
	@RequestMapping(value = "/loginpage")
	public String navToLoginPage() {
		return "login";
	}
	
	
	@RequestMapping(value = "/admOprUser")
	public String navToAdmOprUserPage() {
		return "admOprUser";
	}
	
	@RequestMapping(value = "/admEndUser")
	public String navToAdmEndUser() {
		return "admEndUser";
	}
	
	@RequestMapping(value = "/admVndUser")
	public String navToVdmVndUser() {
		return "admVndUser";
	}
	
	
	@RequestMapping(value="/usrAddEnquiry")
	public String navToUseAddEnquiry() {
		return "usrAddEnquiry";
	}

	@RequestMapping(value="/usrViewEnquiry")
	public String navToUseViewEnquiry() {
		return "usrViewEnquiry";
  }
  
	@RequestMapping(value="/oprEnqTable")
	public String navToShowEnqTable() {
		return "oprEnqTable";
	}
	
	@RequestMapping(value="/oprVendors")
	public String navToShowPartners() {
		return "oprVendors";
	}
	
	@RequestMapping(value="/oprEnqDetails")
	public String navToShowAllDetails() {
		return "oprEnqDetails";
	}

}
