package com.cs.ebm.service;

import javax.persistence.EntityManager;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import com.cs.ebm.dao.RegistrationDAO;
import com.cs.ebm.pojo.Registration;

public class RegistrationService {

	private static final Logger logger = LogManager.getLogger(RegistrationService.class);

	@Autowired
	EntityManager entityManager;

	@Autowired
	RegistrationDAO registrationDAO;

	public void addRegistration(Registration registration) {
		try {
			registrationDAO.save(registration);
		} catch (Exception e) {
			logger.error(getClass() + "| addRegistration |" + "Fail to Add Registration !");
		}
	}
}
