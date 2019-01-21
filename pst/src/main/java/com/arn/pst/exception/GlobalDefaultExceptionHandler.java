package com.arn.pst.exception;

import java.io.PrintWriter;
import java.io.StringWriter;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class GlobalDefaultExceptionHandler {

	
	@ExceptionHandler(NoHandlerFoundException.class)
	public ModelAndView HandlerNoHandlerFoundException(){
		
		ModelAndView mv = new ModelAndView("error");
		
		mv.addObject("errorTitle", "<h2>The page is not constructed!</h2>");
		mv.addObject("errorDescription", "The page you are looking for is not available now!");
		mv.addObject("title", "404 Error Page");
		 
		return mv;
	}
	@ExceptionHandler(ProductNotFoundException.class)
	public ModelAndView HandlerProductNotFoundException(){
		
		ModelAndView mv = new ModelAndView("error");
		
		mv.addObject("errorTitle", "<h2>The product is not available!</h2>");
		mv.addObject("errorDescription", "The product you are looking for is not available right now!");
		mv.addObject("title", "Product unavailable");
		 
		return mv;
	}
	@ExceptionHandler(Exception.class)
	public ModelAndView HandlerException(Exception ex){
		
		ModelAndView mv = new ModelAndView("error");
		
		//this code is for Debugging purpose
		StringWriter sw = new StringWriter();
		PrintWriter pw = new PrintWriter(sw);
		ex.printStackTrace(pw);
		
		mv.addObject("errorTitle", "<h2>Contact your administrator!</h2>");
		mv.addObject("errorDescription", ex.toString());
		mv.addObject("title", "Error");
		 
		return mv;
	}
}
