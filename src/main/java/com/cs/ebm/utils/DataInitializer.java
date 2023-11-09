package com.cs.ebm.utils;

import java.util.Arrays;

import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import com.cs.ebm.dao.UserDAO;
import com.cs.ebm.pojo.User;

@Component
public class DataInitializer implements CommandLineRunner {

	private final UserDAO userdata;

	public DataInitializer(UserDAO userdata) {
		this.userdata = userdata;
	}

	@Override
	public void run(String... args) throws Exception {

		User user1 = new User("admin", "admin@gmail.com", PasswordUtil.getPasswordInMD5("welcome@1"), "admin",
				"active");
		User user2 = new User("user", "user@gmail.com", PasswordUtil.getPasswordInMD5("welcome@1"), "user", "active");
		User user3 = new User("vendor", "vendor@gmail.com", PasswordUtil.getPasswordInMD5("welcome@1"), "vendor",
				"active");
		User user4 = new User("operation", "operation@gmail.com", PasswordUtil.getPasswordInMD5("welcome@1"),
				"operation", "active");
		userdata.saveAll(Arrays.asList(user1, user2, user3, user4));

	}

}