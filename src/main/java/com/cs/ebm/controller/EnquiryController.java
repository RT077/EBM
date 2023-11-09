package com.cs.ebm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cs.ebm.pojo.Enquiry;
import com.cs.ebm.service.EnquiryService;

import lombok.extern.log4j.Log4j2;


@Log4j2 
// it will add logger object as "log" 
@Controller
public class EnquiryController {

	@Autowired
	EnquiryService enquiryService;

	@RequestMapping(value = "/addEnquiry", method = RequestMethod.POST)
	public ModelAndView addEnquiry(@ModelAttribute Enquiry enquiry) {
		log.info(getClass() + "| addEnquiry | method called !");
		enquiryService.addEnquiry(enquiry);
		return new ModelAndView("usrAddEnquiry", "Message",
				"Enquiry Successful ! Our Customer Care Executive Connect you on your preffered time Thank You !");
	}

}
