package kr.icia.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class ShopController {
	
	// 장바구니 페이지 이동
	@PreAuthorize("isAuthenticated()")
	@RequestMapping(value = "/cartlist", method = RequestMethod.GET)
	public void listGET() {
	}
	
	// 주문 페이지 이동
	@PreAuthorize("isAuthenticated()")
	@RequestMapping(value = "/order", method = RequestMethod.GET)
	public void orderGET() {
	}
	
	
	
//    // 카트 목록 불러오기
//	 @GetMapping("/cartList")
//	 public String getCartList(HttpSession session, Model model) throws Exception {
//	  
//     //session에 저장해두었던 userId
//	  String userId = (String)session.getAttribute("member");
//	  
//     // DB에 저장되어있던 cartList
//	  List<CartListVO> cartList = service.cartList(userId);
//	  
//	  model.addAttribute("cartList", cartList);
//	  
//	  return "shop/cartList";
//	 }
//    
//    
//    //카트리스트에서 주문하기
//	 @PostMapping("/cartList")
//	 public String order(HttpSession session, OrderVO order, @RequestParam(value = "chk[]") List<String> chArr) throws Exception {
//	  logger.info("order");
//	  
//	  String userId = (String)session.getAttribute("member");  
//	  
//     //주문번호(orderId) 생성을 위한 로직
//	  Calendar cal = Calendar.getInstance();
//	  int year = cal.get(Calendar.YEAR);
//	  String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
//	  String ymd = ym +  new DecimalFormat("00").format(cal.get(Calendar.DATE));
//	  String subNum = "";
//	  
//	  for(int i = 1; i <= 6; i ++) {
//	   subNum += (int)(Math.random() * 10);
//	  }
//	  
//	  String orderId = ymd + "_" + subNum; //ex) 20200508_373063
//	  order.setOrderId(orderId);
//	  order.setUserId(userId);
//	  
//	  service.orderInfo(order); //주문 테이블 insert
//	  
//	  int cartNum = 0;
//	  for(String i : chArr){
//		  cartNum = Integer.parseInt(i);
//		  System.out.println("cart -> CHK orderList : "+cartNum);
//		  System.out.println("cart -> orderId orderList : "+orderId);
//		  service.orderInfoDetails(orderId,cartNum); //주문 상세 테이블 insert
//		  service.cartDelete(cartNum); //체크되어 들어온 cart번호로 cart table delete
//	  }
//	  
//	  
//	  return "redirect:/shop/myPage";  
//	 }

}
