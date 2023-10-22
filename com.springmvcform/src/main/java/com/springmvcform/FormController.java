package com.springmvcform;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FormController {
	@RequestMapping("/home")
	public String home() {
		return "home";
	}
}
