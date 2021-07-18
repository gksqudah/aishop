package kr.icia.controller;

import java.security.Principal;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.icia.domain.CartVO;
import kr.icia.domain.Criteria;
import kr.icia.domain.MemberVO;
import kr.icia.domain.OrderDetailVO;
import kr.icia.domain.OrderListVO;
import kr.icia.domain.OrderVO;
import kr.icia.service.CartService;
import kr.icia.service.MemberService;
import kr.icia.service.OrderService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/member/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberService memberservice;
	@Autowired
	private BCryptPasswordEncoder pwEncoder;
	@Autowired
	private CartService cartservice;
	@Autowired
	private OrderService orderservice;
	

	// 아래 추가

	// 회원가입 페이지 이동
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public void loginGET() {
		logger.info("회원가입 페이지 진입");
	}

	// 회원가입
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String joinPOST(MemberVO member) throws Exception {

		logger.info("join 진입");
		String rawPw = ""; // 인코딩 전 비밀번호
		String encodePw = ""; // 인코딩 후 비밀번호

		rawPw = member.getUserPw(); // 비밀번호 데이터 얻음
		encodePw = pwEncoder.encode(rawPw); // 비밀번호 인코딩
		member.setUserPw(encodePw); // 인코딩된 비밀번호 member객체에 다시 저장

		// 회원가입 쿼리 실행.
		memberservice.memberJoin(member);

		logger.info("join Service 성공");

		return "redirect:/";

	}

	// 로그인 페이지 이동
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public void joinGET() {
		logger.info("로그인 페이지 진입");
	}

	
	//회원정보 수정 페이지로 이동
	@RequestMapping(value="/memberUpdateView", method=RequestMethod.GET)
	public String registerUpdateView() throws Exception{
		return "member/memberUpdateView";
	}

	
	//회원정보 수정 - 비밀번호 확인해 수정
	@PostMapping("/modify")
	@PreAuthorize("isAuthenticated()")
	public String memberModifyPOST(MemberVO vo, RedirectAttributes rttr, @RequestBody String pw, Principal principal) throws Exception{
		logger.info("memberModifyPOST........." + vo);
		
		String rawPw = ""; // 인코딩 전 비밀번호
		String encodePw = ""; // 인코딩 후 비밀번호
		
		String result = null;
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		
	      String userId = principal.getName();
	      MemberVO member = memberservice.userGetDetail(userId);
	      memberservice.memberModify(vo);
	      
	      if(encoder.matches(pw, member.getPw())) {
	    	  result = "pwConfirmOK";
	    	  
	    	 
	      }else {
	    	  result = "pwConfirmNO";
	      }
	      
	      return "redirect:/";
	}
	
//	@PostMapping("/modify")
//	@PreAuthorize("isAuthenticated()")
//	public String memberModifyPOST(MemberVO vo, RedirectAttributes rttr, @RequestBody String pw, Principal principal) throws Exception{
//	logger.info("memberModifyPOST........." + vo);
//	
//	String rawPw = ""; // 인코딩 전 비밀번호
//	String encodePw = ""; // 인코딩 후 비밀번호
//
//	rawPw = vo.getUserPw(); // 비밀번호 데이터 얻음
//	encodePw = pwEncoder.encode(rawPw); // 비밀번호 인코딩
//	vo.setUserPw(encodePw); // 인코딩된 비밀번호 member객체에 다시 저장
//	
//	int result = memberservice.memberModify(vo);
//	
//	rttr.addFlashAttribute("modify_result", result);
//	
//	return "redirect:/member/mypage";
//	}
	
//	// 비밀번호 확인 처리 요청
//	@PostMapping("/checkPw")
//	public String checkPw(@RequestBody String pw, Principal principal ) throws Exception{
//		String result = null;
//		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
//		
//		String userId = principal.getName();
//		MemberVO dbUser = memberservice.userGetDetail(userId);
//
//		if(encoder.matches(pw, dbUser.getPw())) {
//			result = "pwConfirmOK";
//		}else {
//			result = "pwConfirmNO";
//		}
//				
//		return result;
//				
//	}

	
//	   /* 로그인 */
//	@RequestMapping(value = "/login", method = RequestMethod.POST)
//	public String login(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
//		logger.info("post login");
//		
//		HttpSession session = req.getSession();
//		MemberVO login = memberservice.login(vo);
//		
//		if(login == null) {
//			session.setAttribute("member", null);
//			rttr.addFlashAttribute("msg", false);
//		}else {
//			session.setAttribute("member", login);
//		}
//		
//		return "redirect:/";
//	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	
	// 아이디 중복 검사
	@RequestMapping(value = "/idChk", method = RequestMethod.POST)
	@ResponseBody
	public String memberIdChkPOST(MemberVO vo) throws Exception{
		
		logger.info("memberIdChk() 진입");
		
		int result = memberservice.idChk(vo);
		
		logger.info("결과값 = " + result);
		
		if(result != 0) {
			
			return "fail";	// 중복 아이디가 존재
			
		} else {
			
			return "success";	// 중복 아이디 x
			
		}	
		
	} // memberIdChkPOST() 종료	
	
	
// 회원 상세 페이지
	@GetMapping("/userDetail")
	public void userGetInfoGET(String id, Criteria cri, Model model) throws Exception {
		
		logger.info("memberDetail......." + id);
		
		// 회원 관리 페이지 정보 
		model.addAttribute("cri", cri);
		
		// 선택 회원 정보 
		model.addAttribute("memberInfo", memberservice.userGetDetail(id));
		
	}
	
	// 회원 상세 페이지
	@RequestMapping(value = "update", method = RequestMethod.GET)
	public void memberModifyGET() {
		logger.info("로그인 페이지 진입");
	}
	
	
	
	
	// 회원 탈퇴 get
		@RequestMapping(value="/memberDelete", method = RequestMethod.GET)
		public String memberDeleteView() throws Exception{
			return "member/memberDelete";
		}
		

		
		
		// 내 정보
		   @GetMapping("/mypage")
		   @PreAuthorize("isAuthenticated()")
		   public String mypage(MemberVO vo, Model model, Principal principal) throws Exception {
		      String id = principal.getName();
		      vo.setUserId(id);
		      model.addAttribute("member", memberservice.userGetDetail(id));
		                              // ┗> 로그인된 유저의 정보를 가져옴
		      
		      return "member/mypage";
		   }

		   
		   //내 정보 수정 페이지 진입
		   @GetMapping("/modify")
		   @PreAuthorize("isAuthenticated()")
		   public String modify(MemberVO vo, Model model, Principal principal) throws Exception {
		      String id = principal.getName();
		      vo.setUserId(id);
		      model.addAttribute("member", memberservice.userGetDetail(id));
		                              // ┗> 로그인된 유저의 정보를 가져옴
		      
		      return "member/modify";
		   }
		   
		   
		   //회원 탈퇴 페이지 진입
		   @GetMapping("/delete")
		   @PreAuthorize("isAuthenticated()")
		   public String delete(MemberVO vo, Model model, Principal principal) throws Exception {
		      String id = principal.getName();
		      vo.setUserId(id);
		      model.addAttribute("member", memberservice.userGetDetail(id));
		                              // ┗> 로그인된 유저의 정보를 가져옴

		      
		      return "member/delete";
		   }
		   
//			// 회원 탈퇴 post
//			@RequestMapping(value="/memberDelete", method = RequestMethod.POST)
//			public String memberDelete(MemberVO vo, HttpSession session, RedirectAttributes rttr, Principal principal) throws Exception{
//				
//				// 세션에 있는 member를 가져와 member변수에 넣어줍니다.
//				MemberVO member = (MemberVO) session.getAttribute("member");
//				// 세션에있는 비밀번호
//				String sessionPass = member.getUserPw();
//				// vo로 들어오는 비밀번호
//				String voPass = vo.getUserPw();
//				
//				String user_id = principal.getName();
//				
//				if(!(sessionPass.equals(voPass))) {
//					rttr.addFlashAttribute("msg", false);
//					return "redirect:/member/memberDelete";
//				}
//				memberservice.memberDelete(vo);
//				session.invalidate();
//				return "redirect:/";
//			} 

		   
		   
			//회원 탈퇴
			@PostMapping("/delete")
			@PreAuthorize("isAuthenticated()")
			public String memberDeletePOST(MemberVO vo, RedirectAttributes rttr, Model model, SessionStatus sessionStatus) throws Exception{
				logger.info("memberDeletePOST........." + vo);
				
				 vo.setUserPw(this.pwEncoder.encode(vo.getUserPw()));
				int result = memberservice.memberDelete(vo);
				

				if(result>0) {
					model.addAttribute("msg", "회원 탈퇴가 완료되었습니다.");
					model.addAttribute("url", "/");
					SecurityContextHolder.clearContext(); 	//스프링시큐리티 세션 삭제
				}
				else 
					model.addAttribute("msg", "회원정보삭제에 실패했습니다.");
				
				
				return "redirect:/";
			}
			
			
			
//			//회원 탈퇴
//			@PostMapping("/delete")
//			@PreAuthorize("isAuthenticated()")
//			public String memberDeletePOST(MemberVO vo, RedirectAttributes rttr, Model model, HttpSession session, @RequestBody String pw, Principal principal) throws Exception{
//				logger.info("memberDeletePOST........." + vo);
//				
////				 vo.setUserPw(this.pwEncoder.encode(vo.getUserPw()));
////				int result = memberservice.memberDelete(vo);
//				
//			      String userId = principal.getName();
//			      vo = memberservice.userGetDetail(userId);
//				
//				BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
//
//				if(encoder.matches(pw, vo.getPw())) {
//					model.addAttribute("msg", "회원 탈퇴가 완료되었습니다.");
//					model.addAttribute("url", "/");
//					
//					 memberservice.memberDelete(vo);
//					SecurityContextHolder.clearContext(); 	//스프링시큐리티 세션 삭제
//				}
//				else {
//					model.addAttribute("msg", "회원정보삭제에 실패했습니다.");
//				}
//				
//				return "redirect:/";
//			}
			
			
			
			
			//장바구니 이동
			@RequestMapping(value = "/cartList", method = RequestMethod.GET)
			@PreAuthorize("isAuthenticated()")
			public void cartListGET(MemberVO member, Model model, Principal principal) throws Exception {
				logger.info("장바구니 페이지 진입");
				
			      String id = principal.getName();
			      member.setUserId(id);
			      model.addAttribute("member", memberservice.userGetDetail(id));
			      
			      List<CartVO> cartList = cartservice.cartList(id);
			      
			      model.addAttribute("cartList", cartList);
			      

			}
			
			
			@RequestMapping("/cartList/deleteAll.do")
		    public String deleteAll(HttpSession session, Principal principal) throws Exception {
		        String userId=principal.getName();
		        if(userId!=null) {
		            cartservice.deleteAll(userId);
		        }
		        return "redirect:/member/cartList";
		    }

			
			@ResponseBody
			@RequestMapping(value = "/cartList/deleteCart.do", method = {RequestMethod.GET, RequestMethod.POST})
			public String deleteCart(CartVO cart, Principal principal) throws Exception {
			 logger.info("delete cart");
			 
			 String userId = principal.getName();
			 
		
				  cart.setUserId(userId);
				  
				   cartservice.deleteCart(cart);
		 
				 return "redirect:/member/cartList";  
				}
			
			
			//주문 페이지 이동
			@RequestMapping(value = "/orderform", method = RequestMethod.GET)
			@PreAuthorize("isAuthenticated()")
			public void orderformGET(MemberVO member, Model model, Principal principal) throws Exception {
				logger.info("장바구니 페이지 진입");
				
			      String id = principal.getName();
			      member.setUserId(id);
			      model.addAttribute("member", memberservice.userGetDetail(id));
			      
			      List<CartVO> cartList = cartservice.cartList(id);
			      
			      model.addAttribute("cartList", cartList);
			      

			}
			

		   
			// 주문
			@RequestMapping(value = "/ordersub.do", method = RequestMethod.POST)
			@PreAuthorize("isAuthenticated()")
			public String order(Principal principal, OrderVO order, OrderDetailVO orderDetail) throws Exception {
			 logger.info("order");
			 
		      String userId = principal.getName();
		      MemberVO member = memberservice.userGetDetail(userId);
		      
		      // 달력 메소드 사용해 연/월/일 추출하고 6자리의 랜덤 숫자로 만들어진 subNum을 더해 날짜와 랜덤숫자로 이루어진 고유 문자열 생성
		      Calendar cal = Calendar.getInstance();
		      int year = cal.get(Calendar.YEAR);
		      String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
		      String ymd = ym +  new DecimalFormat("00").format(cal.get(Calendar.DATE));
		      String subNum = "";
		      
		      for(int i = 1; i <= 6; i ++) {
		       subNum += (int)(Math.random() * 10);
		      }
		      
		      String orderId = ymd + "_" + subNum;
		      
			 order.setOrderId(orderId);
			 order.setUserId(userId);
			 
			 orderservice.orderInfo(order);  
			 
			 orderDetail.setOrderId(orderId);
			 orderservice.orderInfo_Detail(orderDetail);
			 
			 cartservice.deleteAll(userId);
			 
			 return "redirect:/member/orderList";
			 
			}
	
			
			// 주문 목록
			@PreAuthorize("isAuthenticated()")
			@RequestMapping(value = "/orderList", method = RequestMethod.GET)
			public void getOrderList(Principal principal, OrderVO order, Model model) throws Exception {
				 logger.info("get order list");
				 
			      String userId = principal.getName();
			      MemberVO member = memberservice.userGetDetail(userId);
			      model.addAttribute("member", memberservice.userGetDetail(userId));
			      
				 
				 order.setUserId(userId);
				 
				 List<OrderVO> orderList = orderservice.orderList(order);
				 
				 model.addAttribute("orderList", orderList);
			}
			
			
			// 주문 상세 목록
			@RequestMapping(value = "/orderView", method = RequestMethod.GET)
			@PreAuthorize("isAuthenticated()")
			public void getOrderList(Principal principal,
			      @RequestParam("n") String orderId,
			      OrderVO order, Model model) throws Exception {
			 logger.info("get order view");
			 
		      String userId = principal.getName();
		      MemberVO member = memberservice.userGetDetail(userId);
		      model.addAttribute("member", memberservice.userGetDetail(userId));
			 
			 order.setUserId(userId);
			 order.setOrderId(orderId);
			 
			 List<OrderListVO> orderView = orderservice.orderView(order);
			 
			 model.addAttribute("orderView", orderView);
			}
	

			@GetMapping("/chargeView")
			public void chargePoint(Long amount, MemberVO member, Model model, Principal principal) throws Exception {
				
				 String id = principal.getName();
			      member.setUserId(id);
			      model.addAttribute("member", memberservice.userGetDetail(id));
			}
			
//			@GetMapping("/chargeView")
//			public @ResponseBody void chargePoint(Long amount) {
//				System.out.println(amount);
//				int id = UserService.getIdFormAuth();
//				pointService.chargePoint(new PointChargeDto(amount), id);
//			}
}
