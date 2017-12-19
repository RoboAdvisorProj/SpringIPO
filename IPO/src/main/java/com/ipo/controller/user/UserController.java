package com.ipo.controller.user;

import java.security.Principal;
import java.util.Map;
import javax.inject.Inject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.ipo.service.user.UserService;
import com.ipo.util.security.ShaEncoder;
import com.ipo.vo.login.LoginDTO;
import com.ipo.vo.user.UserVO;

@Controller
@RequestMapping("/user/*")
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Autowired
	private ShaEncoder encoder;

	@Inject
	UserService userService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void loginGET(@ModelAttribute("dto") LoginDTO loginDTO) {
		logger.info("==========LoginGet==========");
	}

	@RequestMapping(value = "/join_first", method = RequestMethod.GET)
	public void signUpFirstGET() {
		logger.info("==========singUpFirstGET==========");
	}

	@RequestMapping(value = "/join_second", method = RequestMethod.GET)
	public void signUpSecondGET() {
		logger.info("==========signUpSecondGET");
	}

	@RequestMapping(value = "/signupSuccess", method = RequestMethod.GET)
	public void signUpSuccessGET() {
		logger.info("==========signupSuccessGET==========");
	}

	@RequestMapping(value = "/signupSuccess", method = RequestMethod.POST)
	public String signUpSecondPOST(UserVO userVO, RedirectAttributes rttr) throws Exception {
		logger.info("==========signUpSecondPOST==========");
		/*
		 * 다른 암호화도 대부분 마찬가지지만, 비밀 번호를 암호화 했다고 해도 DB에 저장 됐을때 같은 암호면 암호화된 형태(hash값이)가 같다.
		 * 그로 인해 하나의 암호화된 값을 알아 내면 같은 암호를 쉽게 찾을수 있다. 이를 방지하기 위한 방법이 salt암호화 방식이다. 별다른건
		 * 아니고 사용자가 입력한 비밀번호에 사용자마다 중복되지 않는 특정 문자를 추가하여 암호화 하는 방식이다. 예를 들면 회원 가입시 중복되지
		 * 않는 아이디를 (아이디 + 비밀번호) 또는 (비밀번호 + 아이디) 형태로 붙이고 암호화를 하면된다.
		 */
		userVO.setMpwd(encoder.saltEncoding(userVO.getMpwd(), userVO.getMid()));

		userService.register(userVO);
		rttr.addFlashAttribute("user", userVO.getMid());
		return "redirect:/user/signupSuccess";
	}

	@ResponseBody
	@RequestMapping(value = "/isIdExist", method = RequestMethod.POST)
	public String isIdExist(@RequestBody Map<String, Object> map) throws Exception {
		logger.info("==========isIdExist==========");
		UserVO user = userService.selectUser((String) map.get("mid"));
		return (user == null) ? "possible" : "impossible";
	}

	/* 회원수정에서 내정보를 표시 */
	@RequestMapping("/modify_update")
	public String modify(Principal principal, Model model) throws Exception {
		logger.info("==========modify==========");
		UserVO userVO = userService.selectUser(principal.getName());
		model.addAttribute("user", userVO);
		return "user/modify_update";
	}
	//회원수정 성공시
	@RequestMapping(value="/modify_ok", method = RequestMethod.POST)
	public String modifySuccess(UserVO userVO, RedirectAttributes rttr) throws Exception {
		logger.info("==========modifySuccess==========");
		userVO.setMpwd(encoder.saltEncoding(userVO.getMpwd(), userVO.getMid()));

		userService.updateUser(userVO);
		rttr.addFlashAttribute("user", userVO.getMid());
		//회원 정보 수정후 로그 아웃 
		SecurityContextHolder.clearContext();
		rttr.addFlashAttribute("msg","userModify success");
		logger.info("==========회원정보 수정 완료==========");
		return "redirect:/main/main";
	}
}
