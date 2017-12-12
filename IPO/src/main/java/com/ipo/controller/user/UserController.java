package com.ipo.controller.user;

import java.util.Date;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import com.ipo.service.user.UserService;
import com.ipo.vo.login.LoginDTO;
import com.ipo.vo.user.UserVO;

@Controller
@RequestMapping("/user/*")
public class UserController {

	private static final Logger logger=LoggerFactory.getLogger(UserController.class);

	@Inject
	UserService userService;
	
	@RequestMapping(value="/login", method= RequestMethod.GET)
	public void loginGET(@ModelAttribute("dto") LoginDTO loginDTO) {
		
	}
	
	  @RequestMapping(value = "/loginPost", method = RequestMethod.POST)
	  public ModelAndView loginPOST(LoginDTO dto, HttpSession session, Model model) 
			  throws Exception {

	    UserVO vo = userService.login(dto);
	    ModelAndView mav=new ModelAndView();
	    
	    session.setAttribute("id", dto.getMid());
	    model.addAttribute("userVO", vo);

	    if (dto.isUseCookie()) {

	      int amount = 60 * 60 * 24 * 7;

	      Date sessionLimit = new Date(System.currentTimeMillis() + (1000 * amount));

	      userService.keepLogin(vo.getMid(), session.getId(), sessionLimit);
	    }
	    
		if(session.getId()==dto.getMid()) {
			logger.info("`````````Login Success```````````");
			
			mav.setViewName("user/loginPost");
		}else {
			logger.info("```````````Login failure```````````");
			mav.setViewName("user/login");
			mav.addObject("msg", "failure");
		}
	    return mav;
	  }
	  @RequestMapping(value = "/logout", method = RequestMethod.GET)
	  public String logout(HttpServletRequest request, 
	      HttpServletResponse response, HttpSession session) throws Exception {

		  logger.info("logout.................................1");

		  Object obj = session.getAttribute("login");

		  if (obj != null) {
		  UserVO vo = (UserVO) obj;
		  logger.info("logout.................................2");
		  session.removeAttribute("login");
		  session.invalidate();

		  logger.info("logout.................................3");
		  Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");


		  if (loginCookie != null) {
		  logger.info("logout.................................4");
		  loginCookie.setPath("/");
		  loginCookie.setMaxAge(0);
		  response.addCookie(loginCookie);
		  userService.keepLogin(vo.getMid(), session.getId(), new Date());
		  }
		  } 

		  return "redirect:/main/main";
	  }
		@RequestMapping(value="/join_first", method= RequestMethod.GET)
		public void singUpFirstGET() {
			
		}
		@RequestMapping(value="/join_second", method= RequestMethod.GET)
		public void singUpSecondGET() {
			
		}
}
