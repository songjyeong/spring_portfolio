package xyz.itwill.whitehouse.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;


@ControllerAdvice
public class ExceptionController {
	private static final Logger logger=LoggerFactory.getLogger(ExceptionController.class);
	
	@ExceptionHandler(Exception.class)
	public String userinfoExceptionHandler(Exception exception) {
		logger.error(exception.getMessage());
		return "member/member_error";
	}
}
