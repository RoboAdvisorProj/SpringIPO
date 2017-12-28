package com.ipo.controller.help;

import javax.inject.Inject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.ipo.controller.board.BoardController;
import com.ipo.service.mail.MailService;
import com.ipo.service.user.UserService;
import com.ipo.vo.user.UserVO;

@Controller
@RequestMapping("/help/*")
public class HelpController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Inject
	private MailService mailService;

	@Inject
	private UserService userService;
	
	@RequestMapping(value = "/faq", method = RequestMethod.GET)
	public void faqGet() throws Exception {
		logger.info("faq get! .........");
	}
	@RequestMapping(value = "/qna", method = RequestMethod.GET)
	public void qnaGet() throws Exception {
		logger.info("qna get! .........");
	}
	
	  // 고객 문의 이메일 발송
    @RequestMapping(value = "/sendMail/manager", method = RequestMethod.POST)
    public String sendMailId(Authentication auth,@RequestParam String mid,
    										@RequestParam String memailContents, RedirectAttributes rttr) throws Exception {
    	
    	String email="hidoipo@gmail.com";
    	
    	UserVO userVO=new UserVO();
    	
    	logger.info("메일 보내는 사람====>"+userService.selectUser(auth.getName()));
    	userVO=userService.selectUser(auth.getName());
    	String userEmail=userVO.getMemail();
    	
    	logger.info("메일 보내는 사람====>"+userVO);
    	logger.info("메일 내용====>"+memailContents);
    	
    	if(memailContents!=null && userVO!=null) {
    	 String subject = "DO!PO 회원"+"("+auth.getName()+")"+"님이 문의한 접수입니다.";
         StringBuilder sb = new StringBuilder();
         sb.append("사용자 이메일:"+userEmail+"<br/><br/> "+memailContents);
    	  mailService.send(subject, sb.toString(), email, email, null);
    	  rttr.addFlashAttribute("msg", "success");
    	}else {
    	rttr.addFlashAttribute("msg", "fail");
    	}
        return "redirect:/help/qna";
    }
 
}
