package com.ipo.controller.main;

import org.apache.log4j.chainsaw.Main;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ipo.vo.board.BoardVO;

@Controller
@RequestMapping("/main/*")
public class MainController {

	private static Logger logger=LoggerFactory.getLogger(Main.class);
	
	@RequestMapping(value="/main",method=RequestMethod.GET)
	public void registerGet(BoardVO board,Model model) throws Exception{
		logger.info("main get! .........");
	}
}
 