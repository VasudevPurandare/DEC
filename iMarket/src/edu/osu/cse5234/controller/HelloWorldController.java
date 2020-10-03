package edu.osu.cse5234.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {
	
	@RequestMapping(method = RequestMethod.GET)
	void printHello(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.getWriter().println("Hello World Spring MVC!");
	}
	
	@RequestMapping(path="/new", method= RequestMethod.GET)
	String printHelloNew() {
		
		return "HelloJSP";
	}

}
