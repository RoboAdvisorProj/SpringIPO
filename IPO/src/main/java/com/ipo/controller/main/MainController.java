package com.ipo.controller.main;

import javax.inject.Inject;
import org.apache.log4j.chainsaw.Main;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.ipo.service.user.UserService;


@Controller
@RequestMapping("/main/*")
public class MainController {

	@Inject
	UserService userService;
	
	
	
	private static Logger logger=LoggerFactory.getLogger(Main.class);
	
	@RequestMapping("/main")
	public String registerGet(Model model) throws Exception{
		logger.info("main get! .........");
		
		int totalUser=userService.selectCountUser();
		model.addAttribute("totalUser",  totalUser);

		return "main/main";
	}
}
 