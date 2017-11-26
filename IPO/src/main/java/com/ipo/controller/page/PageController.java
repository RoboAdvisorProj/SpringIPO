package com.ipo.controller.page;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	@RequestMapping("/about")
	public String aboutUs() {
		return "about";
	}
	@RequestMapping("/contact")
	public String blog() {
		return "contact";
	}
	@RequestMapping("/service")
	public String service() {
		return "service";
	}
}
 