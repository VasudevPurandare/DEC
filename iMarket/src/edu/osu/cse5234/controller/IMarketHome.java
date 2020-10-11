package edu.osu.cse5234.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IMarketHome {
	
	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String viewHomePage(HttpServletRequest request, HttpServletResponse response) {
		return "Home";
	}
	@RequestMapping(path = "aboutUS", method = RequestMethod.GET)
	public String viewAboutUSPage(HttpServletRequest request, HttpServletResponse response) {
		return "AboutUs";
	}
	@RequestMapping(path = "contactUs", method = RequestMethod.GET)
	public String viewContactUSPage(HttpServletRequest request, HttpServletResponse response) {
		return "ContactUs";
	}
}
