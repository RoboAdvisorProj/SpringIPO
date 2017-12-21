package com.ipo.controller.user;

import java.security.Principal;
import java.util.Map;
import java.util.Random;

import javax.inject.Inject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ipo.service.mail.MailService;
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
	private UserService userService;
	
	@Inject
	private MailService mailService;

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
	@RequestMapping(value = "/user_delete", method = RequestMethod.GET)
	public void userDeleteGET() {

		logger.info("==========userDeleteGET==========");
	}
	@RequestMapping("/user_delete_ok")
	public String userDeletePOST(Authentication auth,RedirectAttributes rttr) throws Exception {
		logger.info("삭제할 아이디================>"+auth.getName());
		userService.deleteUser(auth.getName());
		rttr.addFlashAttribute("msg","delete_user_success");
		//강제 로그아웃
		SecurityContextHolder.clearContext();
		return "redirect:/main/main";
	}
	@RequestMapping(value = "/findId", method = RequestMethod.GET)
	public void findId() {
		logger.info("==========findIdGET==========");
	}
	@RequestMapping(value = "/findPw", method = RequestMethod.GET)
	public void findPw() {
		logger.info("==========findPwGET==========");
	}
 
    // 아이디 찾기
    @RequestMapping(value = "/sendMail/id", method = RequestMethod.POST)
    public String sendMailId(@RequestParam String memail, RedirectAttributes rttr) throws Exception {
 
        UserVO userVO = userService.findAccount(memail);
        logger.info("회원정보=========>"+userVO);
        if (userVO != null) {
            String subject = "DOIPO 아이디 찾기 안내 입니다.";
            StringBuilder sb = new StringBuilder();
            sb.append("귀하의 아이디는 " + userVO.getMid() + " 입니다.");
            mailService.send(subject, sb.toString(), "seongjin605@gmail.com", memail, null);
            rttr.addFlashAttribute("resultSuccessMsg", "귀하의 이메일로 가입된 아이디를 발송 하였습니다.");
        } else {
            rttr.addFlashAttribute("resultFailMsg", "귀하의 이메일로 가입된 아이디가 존재하지 않습니다.");
        }
        return "redirect:/user/findId";
    }
 
    // 비밀번호 찾기
    @RequestMapping(value = "/sendMail/password", method = RequestMethod.POST)
    public String sendMailPassword(@RequestParam String mid,
    				@RequestParam String memail, RedirectAttributes rttr) throws Exception {
     
        UserVO userVO = userService.findAccount(memail);
        logger.info("회원 정보=====>"+userVO);
        if (userVO != null) {
            if (!userVO.getMid().equals(mid)) {
                rttr.addFlashAttribute("resultErrorMsg", "입력하신 이메일의 회원정보와 아이디가 일치하지 않습니다.");
                return "redirect:/user/findPw";
            }
            int ran = new Random().nextInt(100000) + 10000; // 10000 ~ 99999
            String password = String.valueOf(ran);
            //비밀번호 암호화
            userVO.setMpwd(encoder.saltEncoding(password,userVO.getMid()));
            userService.findPw(userVO); // 해당 유저의 DB정보 변경
            
            String subject = "DOIPO 임시 비밀번호 발급 안내입니다.";
            StringBuilder sb = new StringBuilder();
            sb.append("귀하의 임시 비밀번호는 " + password + " 입니다.");
            mailService.send(subject, sb.toString(), "seongjin605@gmail.com", memail, null);
            rttr.addFlashAttribute("resultSuccessMsg", 
            		"귀하의 이메일 주소로 새로운 임시 비밀번호를 발송 하였습니다.\n"
            		+ "로그인 하신 후 비밀번호를 재설정해주세요.");
        } else {
            rttr.addFlashAttribute("resultFailIdMsg", "귀하의 이메일로 가입된 아이디가 존재하지 않습니다.");
        }
        return "redirect:/user/findPw";
    }
}
