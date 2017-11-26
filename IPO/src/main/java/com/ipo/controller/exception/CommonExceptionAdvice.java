package com.ipo.controller.exception;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
@RequestMapping("/exception/*")
public class CommonExceptionAdvice {

  private static final Logger logger = LoggerFactory.getLogger(CommonExceptionAdvice.class);

  @ExceptionHandler(Exception.class)
  public String common(Exception e) {

    logger.info(e.toString());

    return "/exception/error_common";
  }

  //@ExceptionHandler(Exception.class)
  private ModelAndView errorModelAndView(Exception ex) {

    ModelAndView modelAndView = new ModelAndView();
    modelAndView.setViewName("/exception/error_common");
    modelAndView.addObject("exception", ex);

    return modelAndView;
  }

}