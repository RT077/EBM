package com.cs.ebm.exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ExcecptionHandler {

	@ExceptionHandler(value = ServiceNotFoundException.class)
	public ResponseEntity<Object> exception(ServiceNotFoundException exception) {
		// return new ResponseEntity<Object>(exception.getErrorMessage(),
		// HttpStatus.NOT_FOUND);
		return new ResponseEntity<Object>(exception.getErrorMessage(), HttpStatus.NOT_FOUND);
	}
}
