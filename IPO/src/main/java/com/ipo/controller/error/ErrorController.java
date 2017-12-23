package com.ipo.controller.error;

import org.apache.log4j.chainsaw.Main;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/error/*")
public class ErrorController {

	private static Logger logger=LoggerFactory.getLogger(Main.class);
	
	@RequestMapping("/errorPage")
    public ModelAndView errorPage(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("error/errorPage");
		logger.info("에러페이지 발생");
        return mav;
    }
}
 