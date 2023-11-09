package com.cs.ebm.exceptions;

public class ServiceNotFoundException extends RuntimeException {

	String errorMessage;

	public ServiceNotFoundException(String ErrorMsg) {
		super();
		this.errorMessage = ErrorMsg;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

}
