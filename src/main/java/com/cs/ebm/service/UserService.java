package com.cs.ebm.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cs.ebm.dao.UserDAO;
import com.cs.ebm.pojo.User;
import com.cs.ebm.utils.PasswordUtil;

@Service
public class UserService {

	private static final Logger logger = LogManager.getLogger(UserService.class);

	@Autowired
	EntityManager entityManager;
	
	@Autowired
	UserDAO userDAO;

	public List<User> validateUser(String email, String password) {
		String passwordInMD5 = PasswordUtil.getPasswordInMD5(password);
		Query query = entityManager.createNativeQuery("select * from login where email = :email AND password = :pass",
				User.class);
		query.setParameter("email", email);
		query.setParameter("pass", passwordInMD5);
		List list = query.getResultList();
		logger.info(list);
		return query.getResultList();
	}

	public User registerUser(User user) {
		return userDAO.save(user);
	}

}
