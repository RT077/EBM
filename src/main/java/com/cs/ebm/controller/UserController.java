package com.cs.ebm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cs.ebm.pojo.User;
import com.cs.ebm.service.UserService;
import com.cs.ebm.utils.PasswordUtil;

@Controller
public class UserController {

	private static final Logger logger = LogManager.getLogger(UserController.class);

	@Autowired
	UserService userService;

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView checkLogin(HttpServletRequest request, HttpServletResponse response) {
		logger.info("login controller called.");
		// get user email and password forom UI
		String loginuser = request.getParameter("email");
		String password = request.getParameter("password");

		// Invalidate old session and generate new session
		HttpSession session = request.getSession();
		if (!session.isNew()) {
			session.invalidate();
			session = request.getSession();
			session.setMaxInactiveInterval(0);
			logger.info("new session:" + session.getId());
		}

		List<User> ll = userService.validateUser(loginuser, password);
		Long userId = 0l;
		String email = null;
		String username = null;
		String usertype = null;
		if (ll.isEmpty()) {
			logger.info("user not found");
			return new ModelAndView("login", "Message", "Incorrect userid password");
		} else {
			for (User user : ll) {
				userId = user.getuserid();
				email = user.getEmail();
				username = user.getUsername();
				usertype = user.getUsertype();
				// set value in session for access in UI
				session.setAttribute("userId", userId);
				session.setAttribute("userName", username);
				session.setAttribute("userEmail", email);
				session.setAttribute("userType", usertype);
			}
			logger.info("user found");
			if (usertype.equals("admin")) {
				return new ModelAndView("admDashboard", "Message", "Admin Login successful");
			} else if (usertype.equals("operation")) {
				return new ModelAndView("oprDashboard", "Message", "Operation Login successful");
			} else if (usertype.equals("user")) {
				return new ModelAndView("usrDashboard", "Message", "User Login successful");
			} else if (usertype.equals("vendor")) {
				return new ModelAndView("vndDashboard", "Message", "Vendor Login successful");
			}
		}
		return null;
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute User user) {
		user.setStatus("active");
		user.setUsertype("user");
		user.setPassword(PasswordUtil.getPasswordInMD5(user.getPassword()));
		userService.registerUser(user);
		return new ModelAndView("login", "Message", "Registration Successful");
	}

}
