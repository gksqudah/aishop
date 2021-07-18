package kr.icia.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.icia.domain.MemberVO;
import kr.icia.service.MemberService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@SessionAttributes({"member", "memberDetail"})
public class CommonController {
	


	@Autowired
	MemberService memberservice;
	
	@GetMapping("/accessError")
	public void accessDenied(Authentication auth, Model model) {

		log.info("access Denied : " + auth);

		model.addAttribute("msg", "Access Denied");
	}

	@GetMapping("/customLogin**")
	public void loginInput(String error, String logout, Model model,  RedirectAttributes rttr, HttpServletRequest request, MemberVO vo) {

//		log.info("error: " + error);
//		log.info("logout: " + logout);
		
		HttpSession session = request.getSession();
		session.setAttribute("member", model); 
		
		
		if (error != null) {
	           int result = 0;
	           rttr.addFlashAttribute("result", result);
			model.addAttribute("error", "Login Error Check Your Account");

		}

		if (logout != null) {
			model.addAttribute("logout", "Logout!!");
		}
		
	}

	@GetMapping("/customLogout")
	public void logoutGET() {

		log.info("custom logout");
	}

	@PostMapping("/customLogout")
	public void logoutPost() {

		log.info("post custom logout");
	}

	
	
	// 
	@RequestMapping(value="intro", method = RequestMethod.GET)
	public void introGet() throws Exception{
		
	}
	
	
	//
	@RequestMapping(value="productintro", method = RequestMethod.GET)
	public void productintroGet() throws Exception{
		
	}
	
	


	// 아래 필요없음

//	//로그인2
//	@Autowired
//	private MemberService memberservice1;
//	
//	/** Login **/
//    @RequestMapping(value="/customLogin", method= RequestMethod.GET)
//    public String memberLogin(MemberVO memberVO, HttpServletRequest req, RedirectAttributes rttr,Model model) throws Exception {
//        
//        HttpSession session = req.getSession();
//        MemberVO vo = memberservice1.memberLogin(memberVO); 
//    
//        
//        if(memberVO == null) {
//            session.setAttribute("member", vo);
//            rttr.addFlashAttribute("msg", false);
//        } else {
//            session.setAttribute("member", memberVO);
//        }
//        
//        return "redirect:/";
//    }

	
	
//	//로그인3
//	@Autowired
//	private MemberService memberservice;
//	
//	/** Login **/
//    @RequestMapping(value="/customLogin", method= RequestMethod.GET)
//    public String memberLogin( HttpServletRequest req, RedirectAttributes rttr, @ModelAttribute("member") MemberVO member) throws Exception {
//        
//        HttpSession session = req.getSession();
//        MemberVO vo = memberservice.memberLogin(member); 
//    
//        
//        if(member == null) {
////            session.setAttribute("member", null);
//            rttr.addFlashAttribute("msg", false);
//        } else {
////            session.setAttribute("member", memberVO);
//        }
//        
//        return "redirect:/";
//    }
	
//	//로그인 체크
//	@Inject
//	MemberService memberservice;
//	
//	@RequestMapping(value="loginCheck.do",  method=RequestMethod.POST)
//	public ModelAndView loginCheck(@ModelAttribute MemberVO vo, HttpSession session) {
//		boolean result = memberservice.loginCheck(vo, session);
//		ModelAndView mav = new ModelAndView();
//		
//		if(result == true) {
//			mav.setViewName("hone");
//			mav.addObject("msg", "success");
//		}else {
//			mav.setViewName("customLogin");
//			mav.addObject("msg", "failure");
//		}
//		return mav;
//	}
	
	
    
    
}