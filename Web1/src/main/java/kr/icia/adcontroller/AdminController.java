package kr.icia.adcontroller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;

import kr.icia.domain.Criteria;
import kr.icia.domain.MemberVO;
import kr.icia.domain.OrderListVO;
import kr.icia.domain.OrderVO;
import kr.icia.domain.PageDTO;
import kr.icia.domain.ProductVO;
import kr.icia.service.AdminService;
import kr.icia.service.MemberService;

@Controller
@PreAuthorize("hasRole('ROLE_ADMIN')")
@RequestMapping("/admin")
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
//	@Autowired
//	private AuthorService authorService;
	
	@Autowired
	private AdminService adminService;
	@Autowired
	private MemberService memberService;
	
	
	// 관리자 메인 페이지 이동.
	@RequestMapping(value="main", method = RequestMethod.GET)
	public void adminMainGet() throws Exception{
		
		logger.info("관리자 페이지 이동");
	}
	
	// 상품 등록 페이지 이동.
	@RequestMapping(value="productRegister", method = RequestMethod.GET)
	public void adminProductRegisterGet() throws Exception{
		
		logger.info("상품 등록 페이지 이동");

	}
	
	// 상품 등록 페이지 접속
	@RequestMapping(value="productManage", method = RequestMethod.GET)
	public void goodsManageGET(Criteria cri, Model model) throws Exception{
		logger.info("상품 정보 페이지 접속");
		
		//상품 리스트 데이터
		List list = adminService.productGetList(cri);
		
		if(!list.isEmpty()) {
			model.addAttribute("list", list);
		}else {
			model.addAttribute("listCheck", "empty");
			return;
		}
		
		//페이지 인터페이스 데이터
		model.addAttribute("pageMaker", new PageDTO(cri, adminService.productGetTotal(cri)));
		
	}
	
	
	/* 상품 등록 페이지 접속 */
	@RequestMapping(value = "productEnroll", method = RequestMethod.GET)
	public void goodsEnrollGET(Model model) throws Exception{
		
		logger.info("상품 등록 페이지 접속");
		
		ObjectMapper objm = new ObjectMapper();
		
//		List list = adminService.cateList();
		
//		String cateList = objm.writeValueAsString(list);
		
//		model.addAttribute("cateList", cateList);
		
		//logger.info("변경 전.........." + list);
		//logger.info("변경 gn.........." + cateList);
		
	}
	
    /* 상품 등록 */
	@PostMapping("/productEnroll")
	public String productEnrollPOST(ProductVO product, RedirectAttributes rttr) {
		
		logger.info("productEnrollPOST......" + product);
		
		adminService.productEnroll(product);
		
		rttr.addFlashAttribute("enroll_result", product.getGdsName());
		
		
		return "redirect:/admin/productManage";
	}
	
	// 회원 관리 페이지 + 회원 목록보기
	@RequestMapping(value = "memberManage", method= RequestMethod.GET)
	public void memberManageGet(Criteria cri, Model model) throws Exception{
		
		logger.info("회원 관리 페이지 접속");
		
		// 회원 목록 출력 데이터
		List list = memberService.memberGetList(cri);
		
		model.addAttribute("list", list);
		
//		int total = memberService.memberGetTotal(cri);
//		
//		PageDTO pageMaker = new PageDTO(cri, total);
		
		model.addAttribute("pageMaker", new PageDTO(cri, memberService.memberGetTotal(cri)));

	}
	

	

	
	// 회원 상세 페이지
	@GetMapping({"/memberDetail", "/memberModify"})
	public void authorGetInfoGET(String id, Criteria cri, Model model) throws Exception {
		
		logger.info("memberDetail......." + id);
		
		// 회원 페이지 정보
		model.addAttribute("cri", cri);
		
		// 선택 회원 정보 
		model.addAttribute("userInfo", adminService.memberGetDetail(id));
		
	}
	
	// 회원 정보 수정(관리자)
	@PostMapping("/memberDetail")
	public String memberModifyPOST(MemberVO member, RedirectAttributes rttr) throws Exception{
		
		logger.info("memberModifyPOST......." + member);
		
		int result = adminService.adMemberModify(member);
		
		rttr.addFlashAttribute("modify_result", result);
		
		return "redirect:/admin/memberManage";
		
	}
	
	// 상품 상세 페이지 이동
	@GetMapping({"/productDetail", "/productModify"})
	public void productModifyGET(String gdsName, Criteria cri, Model model ) throws Exception{
		logger.info("productGetInfo()..................." + gdsName);
		
		// 회원 페이지 정보
		model.addAttribute("cri", cri);
		
		// 선택 회원 정보 
		model.addAttribute("productInfo", adminService.productGetDetail(gdsName));
		
	}
	
	
	// 상품 정보 수정
	@PostMapping("/productDetail")
	public String productModifyPOST(ProductVO vo, RedirectAttributes rttr) throws Exception{
		
		logger.info("productModifyPOST......." + vo);
		
		int result = adminService.adProductModify(vo);
		
		rttr.addFlashAttribute("modify_result", result);
		
		return "redirect:/admin/productManage";
		
	}
	
	// 상품 삭제
	@PostMapping("/productDelete")
	public String productDeletePOST(ProductVO vo, RedirectAttributes rttr) throws Exception{
		
		logger.info("productModifyPOST......." + vo);
		
		int result = adminService.adProductDelete(vo);
		
		rttr.addFlashAttribute("delete_result", result);
		
		return "redirect:/admin/productManage";
		
	}
	
	
	// 주문 목록
	@RequestMapping(value = "/orderList", method = RequestMethod.GET)
	public void getOrderList(Model model, Criteria cri) throws Exception {
	 logger.info("get order list");
	   
	 List<OrderVO> orderList = adminService.orderList();
	 
	 model.addAttribute("orderList", orderList);
	 
	 model.addAttribute("pageMaker", new PageDTO(cri, adminService.orderListGetTotal(cri)));
	}

	// 주문 상세 목록
	@RequestMapping(value = "/orderView", method = RequestMethod.GET)
	public void getOrderList(String orderId,
	      OrderVO order, Model model, Criteria cri) throws Exception {
	 logger.info("get order view");
	 
	 order.setOrderId(orderId);  
	 List<OrderListVO> orderView = adminService.orderView(order);
	 
	 model.addAttribute("orderView", orderView);
	 
	model.addAttribute("cri", cri);
	}
	
	
	// 주문 상세 목록 - 상태 변경
	@RequestMapping(value = "/orderView**", method = RequestMethod.POST)
	public String delivery(OrderVO order) throws Exception {
	 logger.info("post order view");
	   
	 adminService.delivery(order);
	 
	 // 상품 수량 감소 위한 코드
	 List<OrderListVO> orderView = adminService.orderView(order);

	 ProductVO product = new ProductVO();
	 
	 // for문을 활용, 주문의 갯수만큼 changeStock 실행.
	 for(OrderListVO i : orderView) {
		 product.setGdsNum(i.getGdsNum());
		 product.setGdsStock(i.getAmount());
		 adminService.changeStock(product);
	 }
	 return "redirect:/admin/orderList";
	}
	
	
	// 블랙리스트 관리
	@RequestMapping(value = "blackList", method= RequestMethod.GET)
	public void blackManageGet(Criteria cri, Model model) throws Exception{
		
		logger.info("회원 관리 페이지 접속");
		
		// 회원 목록 출력 데이터
		List list = adminService.blackGetList(cri);
		
		model.addAttribute("list", list);
		
//		int total = memberService.memberGetTotal(cri);
//		
//		PageDTO pageMaker = new PageDTO(cri, total);
		
		model.addAttribute("pageMaker", new PageDTO(cri, adminService.blackGetTotal(cri)));

	}
	
	
//	// 주문 상세 목록 - 상태 변경
//	@RequestMapping(value = "/orderList", method = RequestMethod.POST)
//	public String delivery2(OrderVO order) throws Exception {
//	 logger.info("post order view");
//	   
//	 adminService.delivery(order);
//	 
//	 return "redirect:/admin/orderList";
//	
//	}
	
	

	

}