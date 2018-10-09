package com.training.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping(value="/")
	public String printHello(ModelMap model) {
		return "welcome";
	}
}
