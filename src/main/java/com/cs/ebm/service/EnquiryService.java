package com.cs.ebm.service;

import javax.persistence.EntityManager;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cs.ebm.dao.EnquiryDAO;
import com.cs.ebm.pojo.Enquiry;

@Service
public class EnquiryService {

	private static final Logger logger = LogManager.getLogger(EnquiryService.class);

	@Autowired
	EntityManager entityManager;

	@Autowired
	EnquiryDAO enquiryDAO;

	public void addEnquiry(Enquiry enquiry) {
		try {
			enquiryDAO.save(enquiry);
			//sent email to enduser
			
			
		} catch (Exception e) {
			logger.error(getClass() + "| addEnquiry |" + "Fail to Add Enquiry !");
		}
	}

}
