package com.cs.ebm.utils;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;

public class MailUtil {

	private final JavaMailSender mailSender = null;

	public void sendEmail(String to, String subject, String UserName,String message) {
		SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
		simpleMailMessage.setFrom("javadev.darshit@gmail.com");
		simpleMailMessage.setTo(to);
		simpleMailMessage.setSubject(subject);
		simpleMailMessage.setText(MailTemplates.GREETINGS + UserName + message + MailTemplates.DISCLAIMER);
		this.mailSender.send(simpleMailMessage);

	}
	
	public static void main(String[] args) {
		MailUtil mm= new MailUtil();
		mm.sendEmail("javadev.darshit@gmail.com", MailTemplates.SUB_WELCOME, "Darshit", MailTemplates.WELCOME_EMAIL);
	}

}
