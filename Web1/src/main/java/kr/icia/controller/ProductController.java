package kr.icia.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.icia.domain.CartVO;
import kr.icia.domain.Criteria;
import kr.icia.domain.MemberVO;
import kr.icia.domain.PageDTO;
import kr.icia.domain.ReplyProductListVO;
import kr.icia.domain.ReplyProductVO;
import kr.icia.service.AdminService;
import kr.icia.service.CartService;
import kr.icia.service.MemberService;
import kr.icia.service.OrderService;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/product/*")
public class ProductController {
	
	@Autowired
	private AdminService adminService;
	@Autowired
	private CartService cartservice;
	@Autowired
	private MemberService memberservice;	
	@Autowired
	private OrderService orderservice;	
	
	// 회원가입 페이지 이동
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public void listGET(Model model, Criteria cri) {
		
		List list = adminService.productGetList(cri);
		
		model.addAttribute("list", list);
	
	}
	
	// 회원가입 페이지 이동
	@RequestMapping(value = "/index2", method = RequestMethod.GET)
	public void listGET2(Model model, Criteria cri) {
		
		List list = adminService.productGetList(cri);
		
		model.addAttribute("list", list);
	
	}
	
//	// 회원가입 페이지 이동
//	@RequestMapping(value = "/detail", method = RequestMethod.GET)
//	public void productPhone1GET() {
//	
//	}
	
	// 상품 페이지 이동
	@RequestMapping(value = "/productInfo", method = RequestMethod.GET)
	public void productInfo(Model model, Criteria cri) {
		
		List list = adminService.productGetList(cri);
		
		
		model.addAttribute("list", list);
	
	}
	
	

	// 상품 상세 페이지 이동
	@GetMapping("/detail")
	@PreAuthorize("isAuthenticated()")
	public void productDetailGET(int gdsNum,  Model model, Principal principal, CartVO cart, Criteria cri) throws Exception{
		//회원 정보
		String id = principal.getName();
		MemberVO member = memberservice.userGetDetail(id);

	      member.setUserId(id);
	      model.addAttribute("member", memberservice.userGetDetail(id));
	      
	      
		// 상품 정보
		model.addAttribute("productInfo", adminService.productGetDetail2(gdsNum));
		
		List<ReplyProductListVO> reply = orderservice.replyList(gdsNum);
		model.addAttribute("reply", reply);
		
	     model.addAttribute("pageMaker", new PageDTO(cri, orderservice.replyGetTotal(cri)));
	      
	      
	      // 관련 상품 표시
			List list = adminService.premiumGetList(cri);
			
			model.addAttribute("list", list);
		
	}
	
	
	//카트 담기
	@ResponseBody
	@RequestMapping(value="/detail", method=RequestMethod.POST)
	@PreAuthorize("isAuthenticated()")
	public String addCart(CartVO cart,  Principal principal, Model model, ReplyProductVO reply) throws Exception{
		
				String userId = principal.getName();
				cart.setUserId(userId);
				
				int count = cartservice.countCart(cart.getGdsNum(), userId);
				MemberVO member = memberservice.userGetDetail(userId);
				
				reply.setUserId(userId);
				orderservice.registReply(reply);

			      
			      if(count==0) {
			    	  cartservice.addCart(cart);
			    	 
			      }else {
			    	  cartservice.updateCart(cart);
			      }
			      
			      
			      return "redirect:/";
//			      return "redirect:/product/detail?n=" + reply.getGdsNum();
	    
	}	    
	


	
// 카테고리별 상품 이동	
	// 상품 페이지 이동
	@RequestMapping(value = "/phoneList", method = RequestMethod.GET)
	public void PhoneInfo(Model model, Criteria cri) {
		
		List list = adminService.phoneGetList(cri);
		
		
		model.addAttribute("list", list);
	
	}
	
	// 상품 페이지 이동
	@RequestMapping(value = "/wearableList", method = RequestMethod.GET)
	public void WearableInfo(Model model, Criteria cri) {
		
		List list = adminService.wearableGetList(cri);
		
		
		model.addAttribute("list", list);
	
	}
	
	// 상품 페이지 이동
	@RequestMapping(value = "/premiumList", method = RequestMethod.GET)
	public void PremiumInfo(Model model, Criteria cri) {
		
		List list = adminService.premiumGetList(cri);
		
		
		model.addAttribute("list", list);
	
	}
	

	
	
	
	
	
}
