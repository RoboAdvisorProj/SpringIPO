package com.ipo.controller.about;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/about/*")
public class AboutController {

	private static final Logger logger=LoggerFactory.getLogger(AboutController.class);
	
	@RequestMapping(value="/aboutus",method=RequestMethod.GET)
	public void about() {
		logger.info("aboutus................");
	}
	@RequestMapping(value="/vision",method=RequestMethod.GET)
	public void about1() {
		logger.info("vision................");
	}
	@RequestMapping(value="/developer",method=RequestMethod.GET)
	public void about2() {
		logger.info("developer................");
	}
	@RequestMapping(value="/model",method=RequestMethod.GET)
	public void about3() {
		logger.info("model................");
	}
}
